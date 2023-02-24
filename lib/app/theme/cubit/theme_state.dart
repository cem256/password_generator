part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({@Default(false) bool isDark}) = _ThemeState;

  const ThemeState._();

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
