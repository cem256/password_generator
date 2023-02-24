import 'package:auto_route/auto_route.dart';

import '../../../features/_navbar/view/navbar_view.dart';
import '../../../features/generate_password/presentation/view/generate_password_view.dart';
import '../../../features/password_history/view/password_history_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    MaterialRoute(
      page: NavbarView,
      initial: true,
      children: [
        MaterialRoute(initial: true, page: GeneratePasswordView),
        MaterialRoute(page: PasswordHistoryView),
      ],
    ),
  ],
)
class $AppRouter {}
