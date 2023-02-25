part of 'password_history_cubit.dart';

@freezed
class PasswordHistoryState with _$PasswordHistoryState {
  const factory PasswordHistoryState({
    @Default([]) List<String> history,
    @Default(false) bool isCopied,
    @Default(false) bool isDeleted,
  }) = _PasswordHistoryState;

  factory PasswordHistoryState.fromMap(Map<String, dynamic> map) {
    return PasswordHistoryState(
      history: List<String>.from(map['history'] as List<String>),
    );
  }

  const PasswordHistoryState._();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
    };
  }
}
