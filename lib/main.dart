import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/manager/language/language_manager.dart';
import 'core/manager/route/app_router.gr.dart';
import 'features/generate_password/bloc/password_bloc.dart';
import 'features/password_history/bloc/history_bloc.dart';
import 'product/constants/string_constants.dart';
import 'product/theme/bloc/theme_bloc.dart';
import 'product/theme/product_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: LanguageManager.instance.path,
      fallbackLocale: LanguageManager.instance.en,
      child: PasswordGenerator(),
    ),
  );
}

class PasswordGenerator extends StatelessWidget {
  PasswordGenerator({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (BuildContext context) => ThemeBloc(),
        ),
        BlocProvider<PasswordBloc>(
          create: (BuildContext context) => PasswordBloc()..add(GeneratePassword()),
        ),
        BlocProvider<HistoryBloc>(
          create: (BuildContext context) => HistoryBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: StringConstants.appName,

            //theme
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            theme: ProductTheme.instance.lightTheme,
            darkTheme: ProductTheme.instance.darkTheme,

            //language
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,

            // routing
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
