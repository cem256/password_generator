import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/app/router/app_router.gr.dart';

@RoutePage()
class NavbarView extends StatelessWidget {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        GeneratePasswordRoute(),
        PasswordHistoryRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.password),
              label: context.l10n.generate,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history),
              label: context.l10n.history,
            ),
          ],
        );
      },
    );
  }
}
