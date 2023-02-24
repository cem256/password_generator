import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:password_generator/app/l10n/l10n_manager.dart';
import 'package:password_generator/app/theme/app_theme.dart';

import 'package:path_provider/path_provider.dart';

import 'app/router/app_router.gr.dart';
import 'app/theme/cubit/theme_cubit.dart';
import 'features/generate_password/data/repository/generate_password_repository.dart';
import 'features/generate_password/presentation/cubit/generate_password_cubit.dart';
import 'features/password_history/bloc/history_bloc.dart';
import 'app/constants/string_constants.dart';

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
      supportedLocales: L10nManager.instance.supportedLocales,
      path: L10nManager.instance.path,
      fallbackLocale: L10nManager.instance.en,
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
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
        BlocProvider<GeneratePasswordCubit>(
          create: (_) => GeneratePasswordCubit(
            generatePasswordRepository: GeneratePasswordRepositoryImpl(),
          )..generatePasswordPressed(),
        ),
        BlocProvider<HistoryBloc>(
          create: (BuildContext context) => HistoryBloc(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: StringConstants.appName,

            //theme
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            theme: AppTheme.instance.lightTheme,
            darkTheme: AppTheme.instance.darkTheme,

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
