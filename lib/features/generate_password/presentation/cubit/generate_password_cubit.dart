import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/password_settings.dart';
import '../../data/repository/generate_password_repository.dart';

part 'generate_password_state.dart';
part 'generate_password_cubit.freezed.dart';

class GeneratePasswordCubit extends Cubit<GeneratePasswordState> {
  GeneratePasswordCubit({required GeneratePasswordRepository generatePasswordRepository})
      : _generatePasswordRepository = generatePasswordRepository,
        super(GeneratePasswordState.initial());

  final GeneratePasswordRepository _generatePasswordRepository;

  void lengthChanged({required double length}) {
    final PasswordSettings passwordSettings = state.passwordSettings.copyWith(length: length);
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
    final PasswordSettings passwordSettings = state.passwordSettings.copyWith(hasUppercase: hasUppercase);
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
    final PasswordSettings passwordSettings = state.passwordSettings.copyWith(hasLowercase: hasLowercase);
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
    final PasswordSettings passwordSettings = state.passwordSettings.copyWith(hasNumbers: hasNumbers);
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
    final PasswordSettings passwordSettings = state.passwordSettings.copyWith(hasSpecial: hasSpecial);
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

  void generatePasswordPressed() {
    final PasswordSettings passwordSettings = state.passwordSettings;
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

  Future<void> copyPressed() async {
    emit(state.copyWith(isCopied: true));
    await Clipboard.setData(ClipboardData(text: state.password));
    emit(state.copyWith(isCopied: false));
  }
}
