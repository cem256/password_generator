import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

import '../../../../product/constants/password_constants.dart';

part 'password_event.dart';
part 'password_state.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(const PasswordState()) {
    on<UppercaseSwitchPressed>(_onUppercaseSwitchPressed);
    on<LowercaseSwitchPressed>(_onLowercaseSwitchPressed);
    on<NumbersSwitchPressed>(_onNumbersSwitchPressed);
    on<SpecialSwitchPressed>(_onSpecialSwitchPressed);
    on<PasswordLengthChanged>(_onPasswordLengthChanged);
    on<GeneratePassword>(_onGeneratePassword);
    on<PasswordCopied>(_onPasswordCopied);
  }

  void _onUppercaseSwitchPressed(UppercaseSwitchPressed event, Emitter<PasswordState> emit) {
    emit(state.copyWith(hasUppercase: !state.hasUppercase));
    if (!isAllSettingsDisabled) {
      emit(state.copyWith(password: _generatePassword()));
    }
  }

  void _onLowercaseSwitchPressed(LowercaseSwitchPressed event, Emitter<PasswordState> emit) {
    emit(state.copyWith(hasLowercase: !state.hasLowercase));
    if (!isAllSettingsDisabled) {
      emit(state.copyWith(password: _generatePassword()));
    }
  }

  void _onNumbersSwitchPressed(NumbersSwitchPressed event, Emitter<PasswordState> emit) {
    emit(state.copyWith(hasNumbers: !state.hasNumbers));
    if (!isAllSettingsDisabled) {
      emit(state.copyWith(password: _generatePassword()));
    }
  }

  void _onSpecialSwitchPressed(SpecialSwitchPressed event, Emitter<PasswordState> emit) {
    emit(state.copyWith(hasSpecial: !state.hasSpecial));
    if (!isAllSettingsDisabled) {
      emit(state.copyWith(password: _generatePassword()));
    }
  }

  void _onPasswordLengthChanged(PasswordLengthChanged event, Emitter<PasswordState> emit) {
    emit(state.copyWith(length: event.length));
    if (!isAllSettingsDisabled) {
      emit(state.copyWith(password: _generatePassword()));
    }
  }

  void _onGeneratePassword(GeneratePassword event, Emitter<PasswordState> emit) {
    emit(state.copyWith(password: _generatePassword()));
  }

  Future<void> _onPasswordCopied(PasswordCopied event, Emitter<PasswordState> emit) async {
    emit(state.copyWith(isCopied: true));
    await Clipboard.setData(ClipboardData(text: state.password));
    emit(state.copyWith(isCopied: false));
  }

  bool get isAllSettingsDisabled =>
      state.hasUppercase == false &&
      state.hasLowercase == false &&
      state.hasNumbers == false &&
      state.hasSpecial == false;

  String _generatePassword() {
    //Define character set
    String lettersUppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String lettersLowercase = "abcdefghijklmnopqrstuvwxyz";
    String numbers = "0123456789";
    String special = "@#!\$%&?";

    String password = "";
    String characterSet = "";

    characterSet += state.hasUppercase ? lettersUppercase : '';
    characterSet += state.hasLowercase ? lettersLowercase : '';
    characterSet += state.hasNumbers ? numbers : '';
    characterSet += state.hasSpecial ? special : '';

    for (int i = 0; i < state.length; i++) {
      int index = Random.secure().nextInt(characterSet.length);
      password += characterSet[index];
    }

    return password;
  }
}
