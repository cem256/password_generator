import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:password_generator/app/constants/string_constants.dart';
import 'package:password_generator/app/l10n/cubit/l10n_cubit.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/app/router/app_router.dart';
import 'package:password_generator/app/theme/cubit/theme_cubit.dart';
import 'package:password_generator/app/theme/dark/app_theme_dark.dart';
import 'package:password_generator/app/theme/light/app_theme_light.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/utils/package_info/package_info_utils.dart';
import 'package:password_generator/features/generate_password/data/repository/generate_password_repository.dart';
import 'package:password_generator/features/generate_password/presentation/cubit/generate_password_cubit.dart';
import 'package:password_generator/features/password_history/cubit/password_history_cubit.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Flutter Native Splash
  FlutterNativeSplash();
  // Initialize Hydrated Bloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  // Initialize PackageInfoPlus
  await PackageInfoUtils.init();
  // Set Screen Orientation
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(PasswordGenerator());
}

class PasswordGenerator extends StatelessWidget {
  PasswordGenerator({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // Injecting Blocs to the widget tree
    return MultiBlocProvider(
      providers: [
        BlocProvider<L10nCubit>(
          create: (_) => L10nCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<PasswordHistoryCubit>(
          create: (_) => PasswordHistoryCubit(),
        ),
        BlocProvider<GeneratePasswordCubit>(
          create: (_) => GeneratePasswordCubit(
            generatePasswordRepository: GeneratePasswordRepositoryImpl(),
          )..generatePassword(),
        ),
      ],
      child: BlocBuilder<L10nCubit, L10nState>(
        builder: (context, l10nState) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: StringConstants.appName,

                // Theme
                theme: AppThemeLight().theme,
                darkTheme: AppThemeDark().theme,
                themeMode: themeState.themeMode,

                // Localization
                locale: l10nState.locale,
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: const [
                  ...AppLocalizations.localizationsDelegates,
                  LocaleNamesLocalizationsDelegate(),
                ],

                // Routing
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),

                builder: (context, child) => MediaQuery(
                  // Disables font scaling and bold text
                  data: context.mediaQuery.copyWith(textScaleFactor: 1, boldText: false),
                  child: child!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
