import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_generator/product/constants/password_constants.dart';

part 'password_settings.freezed.dart';

@freezed
class PasswordSettings with _$PasswordSettings {
  const factory PasswordSettings({
    required double length,
    required bool hasLowercase,
    required bool hasUppercase,
    required bool hasNumbers,
    required bool hasSpecial,
  }) = _PasswordSettings;

  factory PasswordSettings.initial() => const PasswordSettings(
      length: PasswordConstants.initialLength,
      hasLowercase: true,
      hasUppercase: true,
      hasNumbers: true,
      hasSpecial: true);

  const PasswordSettings._();

  bool get isAllSettingsDisabled =>
      hasUppercase == false && hasLowercase == false && hasNumbers == false && hasSpecial == false;
}
