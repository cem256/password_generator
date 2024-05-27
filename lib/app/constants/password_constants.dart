abstract final class PasswordConstants {
  PasswordConstants._();

  static const double initialLength = 12;
  static const double minLength = 6;
  static const double maxLength = 32;

  static const String lettersUppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const String lettersLowercase = 'abcdefghijklmnopqrstuvwxyz';
  static const String numbers = '0123456789';
  static const String special = r'@#!$%&?';
}
