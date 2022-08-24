part of 'password_bloc.dart';

class PasswordState extends Equatable {
  final double length;
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumbers;
  final bool hasSpecial;
  final String password;

  const PasswordState({
    this.length = PasswordConstants.initialLength,
    this.hasUppercase = true,
    this.hasLowercase = true,
    this.hasNumbers = true,
    this.hasSpecial = true,
    this.password = "",
  });

  @override
  List<Object> get props => [
        length,
        hasUppercase,
        hasLowercase,
        hasNumbers,
        hasSpecial,
        password,
      ];

  PasswordState copyWith({
    double? length,
    bool? hasUppercase,
    bool? hasLowercase,
    bool? hasNumbers,
    bool? hasSpecial,
    String? password,
  }) {
    return PasswordState(
      length: length ?? this.length,
      hasUppercase: hasUppercase ?? this.hasUppercase,
      hasLowercase: hasLowercase ?? this.hasLowercase,
      hasNumbers: hasNumbers ?? this.hasNumbers,
      hasSpecial: hasSpecial ?? this.hasSpecial,
      password: password ?? this.password,
    );
  }
}
