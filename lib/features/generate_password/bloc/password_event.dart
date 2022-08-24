part of 'password_bloc.dart';

abstract class PasswordEvent extends Equatable {
  const PasswordEvent();

  @override
  List<Object> get props => [];
}

class UppercaseSwitchPressed extends PasswordEvent {}

class LowercaseSwitchPressed extends PasswordEvent {}

class NumbersSwitchPressed extends PasswordEvent {}

class SpecialSwitchPressed extends PasswordEvent {}

class PasswordLengthChanged extends PasswordEvent {
  const PasswordLengthChanged(this.length);
  final double length;

  @override
  List<Object> get props => [length];
}

class GeneratePassword extends PasswordEvent {}

class PasswordCopied extends PasswordEvent {}
