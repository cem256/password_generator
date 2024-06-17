// ignore_for_file: invalid_annotation_target

part of 'generate_password_cubit.dart';

@freezed
class GeneratePasswordState with _$GeneratePasswordState {
  factory GeneratePasswordState({
    @Default(PasswordSettings()) PasswordSettings passwordSettings,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String password,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default(false) bool isCopied,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default(0) int generatedPasswordCount,
  }) = _GeneratePasswordState;

  const GeneratePasswordState._();

  factory GeneratePasswordState.fromJson(Map<String, dynamic> json) => _$GeneratePasswordStateFromJson(json);
}
