import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:password_generator/app/l10n/app_l10n.dart';

part 'l10n_state.dart';
part 'l10n_cubit.freezed.dart';

class I10nCubit extends HydratedCubit<I10nState> {
  I10nCubit() : super(I10nState.initial());

  void changeLocale({required Locale locale}) {
    emit(I10nState(locale: locale));
  }

  @override
  I10nState? fromJson(Map<String, dynamic> json) {
    return I10nState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(I10nState state) {
    return state.toMap();
  }
}
