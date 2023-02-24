// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/_navbar/view/navbar_view.dart' as _i1;
import '../../../features/generate_password/presentation/view/generate_password_view.dart'
    as _i2;
import '../../../features/password_history/view/password_history_view.dart'
    as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NavbarRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.NavbarView(),
      );
    },
    GeneratePasswordRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.GeneratePasswordView(),
      );
    },
    PasswordHistoryRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PasswordHistoryView(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          NavbarRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              GeneratePasswordRoute.name,
              path: '',
              parent: NavbarRoute.name,
            ),
            _i4.RouteConfig(
              PasswordHistoryRoute.name,
              path: 'password-history-view',
              parent: NavbarRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.NavbarView]
class NavbarRoute extends _i4.PageRouteInfo<void> {
  const NavbarRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NavbarRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavbarRoute';
}

/// generated route for
/// [_i2.GeneratePasswordView]
class GeneratePasswordRoute extends _i4.PageRouteInfo<void> {
  const GeneratePasswordRoute()
      : super(
          GeneratePasswordRoute.name,
          path: '',
        );

  static const String name = 'GeneratePasswordRoute';
}

/// generated route for
/// [_i3.PasswordHistoryView]
class PasswordHistoryRoute extends _i4.PageRouteInfo<void> {
  const PasswordHistoryRoute()
      : super(
          PasswordHistoryRoute.name,
          path: 'password-history-view',
        );

  static const String name = 'PasswordHistoryRoute';
}
