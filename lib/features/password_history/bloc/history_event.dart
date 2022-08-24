part of 'history_bloc.dart';

abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

class AddToHistoryPressed extends HistoryEvent {
  const AddToHistoryPressed(this.password);
  final String password;

  @override
  List<Object> get props => [password];
}

class CopyPasswordPressed extends HistoryEvent {
  const CopyPasswordPressed(this.password);
  final String password;

  @override
  List<Object> get props => [password];
}

class DeleteFromHistoryPressed extends HistoryEvent {
  const DeleteFromHistoryPressed(this.password);
  final String password;

  @override
  List<Object> get props => [password];
}
