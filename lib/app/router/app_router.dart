import 'package:auto_route/auto_route.dart';
import 'package:password_generator/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavbarRoute.page,
          initial: true,
          children: [
            AutoRoute(page: GeneratePasswordRoute.page, initial: true),
            AutoRoute(page: PasswordHistoryRoute.page),
          ],
        ),
        AutoRoute(
          page: LanguageRoute.page,
        ),
      ];
}
