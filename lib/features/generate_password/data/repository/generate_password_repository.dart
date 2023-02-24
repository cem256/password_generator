import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:password_generator/app/constants/password_constants.dart';

import '../model/password_settings.dart';

abstract class GeneratePasswordRepository {
  Either<void, String> generatePassword(PasswordSettings passwordSettings);
}

class GeneratePasswordRepositoryImpl implements GeneratePasswordRepository {
  @override
  Either<void, String> generatePassword(PasswordSettings passwordSettings) {
    if (passwordSettings.isAllSettingsDisabled) {
      return left(null);
    }
    String password = "";
    String characterSet = "";

    characterSet += passwordSettings.hasUppercase ? PasswordConstants.lettersUppercase : '';
    characterSet += passwordSettings.hasLowercase ? PasswordConstants.lettersLowercase : '';
    characterSet += passwordSettings.hasNumbers ? PasswordConstants.numbers : '';
    characterSet += passwordSettings.hasSpecial ? PasswordConstants.special : '';

    for (int i = 0; i < passwordSettings.length; i++) {
      int index = Random.secure().nextInt(characterSet.length);
      password += characterSet[index];
    }

    return right(password);
  }
}
