part of 'theme_bloc.dart';

class ThemeState {
  final bool isDark;
  const ThemeState({this.isDark = true});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDark': isDark,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      isDark: map['isDark'] as bool,
    );
  }
}
