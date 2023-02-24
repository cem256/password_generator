part of 'generate_password_cubit.dart';

@freezed
class GeneratePasswordState with _$GeneratePasswordState {
  const factory GeneratePasswordState({
    required PasswordSettings passwordSettings,
    required String password,
    required bool isCopied,
  }) = _GeneratePasswordState;

  factory GeneratePasswordState.initial() => GeneratePasswordState(
        passwordSettings: PasswordSettings.initial(),
        password: '',
        isCopied: false,
      );
}
