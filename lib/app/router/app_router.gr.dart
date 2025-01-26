// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:password_generator/features/_navbar/view/navbar_view.dart'
    as _i3;
import 'package:password_generator/features/generate_password/presentation/view/generate_password_view.dart'
    as _i1;
import 'package:password_generator/features/language/view/language_view.dart'
    as _i2;
import 'package:password_generator/features/password_history/view/password_history_view.dart'
    as _i4;

/// generated route for
/// [_i1.GeneratePasswordView]
class GeneratePasswordRoute extends _i5.PageRouteInfo<void> {
  const GeneratePasswordRoute({List<_i5.PageRouteInfo>? children})
    : super(GeneratePasswordRoute.name, initialChildren: children);

  static const String name = 'GeneratePasswordRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.GeneratePasswordView();
    },
  );
}

/// generated route for
/// [_i2.LanguageView]
class LanguageRoute extends _i5.PageRouteInfo<void> {
  const LanguageRoute({List<_i5.PageRouteInfo>? children})
    : super(LanguageRoute.name, initialChildren: children);

  static const String name = 'LanguageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.LanguageView();
    },
  );
}

/// generated route for
/// [_i3.NavbarView]
class NavbarRoute extends _i5.PageRouteInfo<void> {
  const NavbarRoute({List<_i5.PageRouteInfo>? children})
    : super(NavbarRoute.name, initialChildren: children);

  static const String name = 'NavbarRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.NavbarView();
    },
  );
}

/// generated route for
/// [_i4.PasswordHistoryView]
class PasswordHistoryRoute extends _i5.PageRouteInfo<void> {
  const PasswordHistoryRoute({List<_i5.PageRouteInfo>? children})
    : super(PasswordHistoryRoute.name, initialChildren: children);

  static const String name = 'PasswordHistoryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.PasswordHistoryView();
    },
  );
}
