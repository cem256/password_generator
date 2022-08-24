import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
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
}
