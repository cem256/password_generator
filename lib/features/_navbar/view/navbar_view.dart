import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:password_generator/app/l10n/l10n.g.dart';
import 'package:password_generator/app/router/app_router.gr.dart';

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
              label: LocaleKeys.generate.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history),
              label: LocaleKeys.history.tr(),
            )
          ],
        );
      },
    );
  }
}
