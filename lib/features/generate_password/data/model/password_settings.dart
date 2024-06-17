import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_generator/app/constants/password_constants.dart';

part 'password_settings.freezed.dart';
part 'password_settings.g.dart';

@freezed
class PasswordSettings with _$PasswordSettings {
  const factory PasswordSettings({
    @Default(PasswordConstants.initialLength) double length,
    @Default(true) bool hasLowercase,
    @Default(true) bool hasUppercase,
    @Default(true) bool hasNumbers,
    @Default(true) bool hasSpecial,
  }) = _PasswordSettings;

  const PasswordSettings._();

  factory PasswordSettings.fromJson(Map<String, dynamic> json) =>
      _$PasswordSettingsFromJson(json);

  bool get isAllOptionsDisabled =>
      hasUppercase == false &&
      hasLowercase == false &&
      hasNumbers == false &&
      hasSpecial == false;
}
