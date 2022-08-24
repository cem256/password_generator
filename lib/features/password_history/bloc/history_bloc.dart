import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends HydratedBloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState()) {
    on<AddToHistoryPressed>(_onAddToHistoryPressed);
    on<CopyPasswordPressed>(_onCopyPasswordPressed);
    on<DeleteFromHistoryPressed>(_onDeleteFromHistoryPressed);
  }

  void _onAddToHistoryPressed(AddToHistoryPressed event, Emitter<HistoryState> emit) {
    if (!state.history.contains(event.password)) {
      emit(state.copyWith(history: List.of(state.history)..insert(0, event.password)));
    }
  }

  Future<void> _onCopyPasswordPressed(CopyPasswordPressed event, Emitter<HistoryState> emit) async {
    emit(state.copyWith(isCopied: true, isDeleted: false));
    await Clipboard.setData(ClipboardData(text: event.password));
    emit(state.copyWith(isCopied: false));
  }

  void _onDeleteFromHistoryPressed(DeleteFromHistoryPressed event, Emitter<HistoryState> emit) {
    emit(state.copyWith(history: List.of(state.history)..remove(event.password), isDeleted: true));
    emit(state.copyWith(isDeleted: false));
  }

  @override
  HistoryState? fromJson(Map<String, dynamic> json) {
    return HistoryState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(HistoryState state) {
    return state.toMap();
  }
}
