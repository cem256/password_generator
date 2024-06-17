// ignore_for_file: cascade_invocations

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:password_generator/features/generate_password/data/model/password_settings.dart';
import 'package:password_generator/features/generate_password/data/repository/generate_password_repository.dart';

part 'generate_password_state.dart';
part 'generate_password_cubit.freezed.dart';
part 'generate_password_cubit.g.dart';

class GeneratePasswordCubit extends HydratedCubit<GeneratePasswordState> {
  GeneratePasswordCubit({
    required GeneratePasswordRepository generatePasswordRepository,
  })  : _generatePasswordRepository = generatePasswordRepository,
        super(GeneratePasswordState());

  final GeneratePasswordRepository _generatePasswordRepository;

  void lengthChanged({required double length}) {
    final passwordSettings = state.passwordSettings.copyWith(length: length);
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(passwordSettings: passwordSettings, password: password),
      ),
    );
  }

  void uppercaseChanged({required bool hasUppercase}) {
    final passwordSettings = state.passwordSettings.copyWith(hasUppercase: hasUppercase);
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(passwordSettings: passwordSettings, password: password),
      ),
    );
  }

  void lowercaseChanged({required bool hasLowercase}) {
    final passwordSettings = state.passwordSettings.copyWith(hasLowercase: hasLowercase);
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(passwordSettings: passwordSettings, password: password),
      ),
    );
  }

  void numbersChanged({required bool hasNumbers}) {
    final passwordSettings = state.passwordSettings.copyWith(hasNumbers: hasNumbers);
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(passwordSettings: passwordSettings, password: password),
      ),
    );
  }

  void specialChanged({required bool hasSpecial}) {
    final passwordSettings = state.passwordSettings.copyWith(hasSpecial: hasSpecial);
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(passwordSettings: passwordSettings, password: password),
      ),
    );
  }

  void generatePassword() {
    final passwordSettings = state.passwordSettings;
    final result = _generatePasswordRepository.generatePassword(passwordSettings);

    result.fold(
      (l) => emit(
        state.copyWith(passwordSettings: passwordSettings),
      ),
      (password) => emit(
        state.copyWith(
          passwordSettings: passwordSettings,
          password: password,
          generatedPasswordCount: state.generatedPasswordCount + 1,
        ),
      ),
    );
  }

  Future<void> copyPassword() async {
    emit(state.copyWith(isCopied: true));
    await Clipboard.setData(ClipboardData(text: state.password));
    emit(state.copyWith(isCopied: false));
  }

  @override
  GeneratePasswordState? fromJson(Map<String, dynamic> json) {
    return GeneratePasswordState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(GeneratePasswordState state) {
    return state.toJson();
  }
}
