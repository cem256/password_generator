import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:password_generator/app/base/cubit/base_cubit.dart';
import 'package:password_generator/app/l10n/app_l10n.dart';

part 'l10n_state.dart';
part 'l10n_cubit.freezed.dart';

class L10nCubit extends BaseCubit<L10nState> with HydratedMixin {
  L10nCubit() : super(L10nState.initial());

  void changeLocale({required Locale locale}) {
    emit(L10nState(locale: locale));
  }

  @override
  L10nState? fromJson(Map<String, dynamic> json) {
    return L10nState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(L10nState state) {
    return state.toMap();
  }
}
