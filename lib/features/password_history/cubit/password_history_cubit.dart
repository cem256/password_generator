import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'password_history_state.dart';
part 'password_history_cubit.freezed.dart';

class PasswordHistoryCubit extends HydratedCubit<PasswordHistoryState> {
  PasswordHistoryCubit() : super(const PasswordHistoryState());

  void addToHistory({required String password}) {
    if (!state.history.contains(password)) {
      emit(state.copyWith(history: List.of(state.history)..insert(0, password)));
    }
  }

  Future<void> copyPassword({required String password}) async {
    emit(state.copyWith(isCopied: true, isDeleted: false));
    await Clipboard.setData(ClipboardData(text: password));
    emit(state.copyWith(isCopied: false));
  }

  void deleteFromHistory({required String password}) {
    emit(state.copyWith(history: List.of(state.history)..remove(password), isDeleted: true));
    emit(state.copyWith(isDeleted: false));
  }

  @override
  PasswordHistoryState? fromJson(Map<String, dynamic> json) {
    return PasswordHistoryState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(PasswordHistoryState state) {
    return state.toMap();
  }
}
