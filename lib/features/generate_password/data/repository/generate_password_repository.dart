import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:password_generator/app/constants/password_constants.dart';

import 'package:password_generator/features/generate_password/data/model/password_settings.dart';

abstract interface class GeneratePasswordRepository {
  Either<void, String> generatePassword(PasswordSettings passwordSettings);
}

final class GeneratePasswordRepositoryImpl implements GeneratePasswordRepository {
  @override
  Either<void, String> generatePassword(PasswordSettings passwordSettings) {
    if (passwordSettings.isAllOptionsDisabled) {
      return left(null);
    }
    final password = StringBuffer();
    var characterSet = '';

    if (passwordSettings.hasUppercase) {
      characterSet += PasswordConstants.lettersUppercase;
    }
    if (passwordSettings.hasLowercase) {
      characterSet += PasswordConstants.lettersLowercase;
    }
    if (passwordSettings.hasNumbers) {
      characterSet += PasswordConstants.numbers;
    }
    if (passwordSettings.hasSpecial) {
      characterSet += PasswordConstants.special;
    }

    characterSet += passwordSettings.hasLowercase ? PasswordConstants.lettersLowercase : '';

    for (var i = 0; i < passwordSettings.length; i++) {
      final index = Random.secure().nextInt(characterSet.length);
      password.write(characterSet[index]);
    }

    return right(password.toString());
  }
}
