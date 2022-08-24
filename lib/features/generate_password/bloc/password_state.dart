part of 'password_bloc.dart';

class PasswordState extends Equatable {
  final double length;
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumbers;
  final bool hasSpecial;
  final String password;
  final bool isCopied;

  const PasswordState({
    this.length = PasswordConstants.initialLength,
    this.hasUppercase = true,
    this.hasLowercase = true,
    this.hasNumbers = true,
    this.hasSpecial = true,
    this.password = "",
    this.isCopied = false,
  });

  @override
  List<Object> get props => [
        length,
        hasUppercase,
        hasLowercase,
        hasNumbers,
        hasSpecial,
        password,
        isCopied,
      ];

  PasswordState copyWith({
    double? length,
    bool? hasUppercase,
    bool? hasLowercase,
    bool? hasNumbers,
    bool? hasSpecial,
    String? password,
    bool? isCopied,
  }) {
    return PasswordState(
      length: length ?? this.length,
      hasUppercase: hasUppercase ?? this.hasUppercase,
      hasLowercase: hasLowercase ?? this.hasLowercase,
      hasNumbers: hasNumbers ?? this.hasNumbers,
      hasSpecial: hasSpecial ?? this.hasSpecial,
      password: password ?? this.password,
      isCopied: isCopied ?? this.isCopied,
    );
  }
}
