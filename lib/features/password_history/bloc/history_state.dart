part of 'history_bloc.dart';

class HistoryState extends Equatable {
  const HistoryState({
    this.history = const [],
    this.isCopied = false,
    this.isDeleted = false,
  });
  factory HistoryState.fromMap(Map<String, dynamic> map) {
    return HistoryState(
      history: List<String>.from(map['history'] as List<String>),
    );
  }
  final List<String> history;
  final bool isCopied;
  final bool isDeleted;

  @override
  List<Object> get props => [history, isCopied, isDeleted];

  get password => null;

  HistoryState copyWith({
    List<String>? history,
    bool? isCopied,
    bool? isDeleted,
  }) {
    return HistoryState(
      history: history ?? this.history,
      isCopied: isCopied ?? this.isCopied,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
    };
  }
}
