// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:password_generator/features/_navbar/view/navbar_view.dart'
    as _i2;
import 'package:password_generator/features/generate_password/presentation/view/generate_password_view.dart'
    as _i1;
import 'package:password_generator/features/password_history/view/password_history_view.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    GeneratePasswordRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.GeneratePasswordView(),
      );
    },
    NavbarRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavbarView(),
      );
    },
    PasswordHistoryRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PasswordHistoryView(),
      );
    },
  };
}

/// generated route for
/// [_i1.GeneratePasswordView]
class GeneratePasswordRoute extends _i4.PageRouteInfo<void> {
  const GeneratePasswordRoute({List<_i4.PageRouteInfo>? children})
      : super(
          GeneratePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneratePasswordRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavbarView]
class NavbarRoute extends _i4.PageRouteInfo<void> {
  const NavbarRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NavbarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavbarRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PasswordHistoryView]
class PasswordHistoryRoute extends _i4.PageRouteInfo<void> {
  const PasswordHistoryRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PasswordHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordHistoryRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
