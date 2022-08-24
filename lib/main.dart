import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/manager/language/language_manager.dart';
import 'features/generate_password/bloc/password_bloc.dart';
import 'features/generate_password/view/generate_password_view.dart';
import 'product/constants/string_constants.dart';
import 'product/theme/product_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash();

  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: LanguageManager.instance.path,
      fallbackLocale: LanguageManager.instance.en,
      child: const PasswordGenerator(),
    ),
  );
}

class PasswordGenerator extends StatelessWidget {
  const PasswordGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordBloc()..add(GeneratePassword()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringConstants.appName,
        theme: ProductTheme.instance.theme,
        home: const GeneratePasswordView(),

        //language
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
