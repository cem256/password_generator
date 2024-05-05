import 'package:auto_route/auto_route.dart';
import 'package:password_generator/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends $AppRouter {
  @override
  List<AdaptiveRoute> get routes => [
        AdaptiveRoute(
          page: NavbarRoute.page,
          initial: true,
          children: [
            AdaptiveRoute(page: GeneratePasswordRoute.page, initial: true),
            AdaptiveRoute(page: PasswordHistoryRoute.page),
          ],
        ),
        AdaptiveRoute(
          page: LanguageRoute.page,
        ),
      ];
}
