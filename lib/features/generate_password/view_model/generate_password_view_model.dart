import 'dart:math';

import 'package:mobx/mobx.dart';

part 'generate_password_view_model.g.dart';

class GeneratePasswordViewModel = GeneratePasswordViewModelBase with _$GeneratePasswordViewModel;

abstract class GeneratePasswordViewModelBase with Store {
  final double minLength = 8;
  final double maxLength = 32;

  @observable
  double length = 12;

  @observable
  bool containsUppercase = true;

  @observable
  bool containsLowercase = true;

  @observable
  bool containsNumber = true;

  @observable
  bool containsSpecial = true;

  @observable
  String password = "";

  @computed
  bool get isAllSettingsDisabled =>
      containsUppercase == false && containsLowercase == false && containsNumber == false && containsSpecial == false;

  @action
  void generatePassword() {
    //Define character set
    String uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String lowercase = "abcdefghijklmnopqrstuvwxyz";
    String number = "0123456789";
    String special = "@#!\$%&?";

    String allowedCharacters = "";

    allowedCharacters += containsUppercase ? uppercase : '';
    allowedCharacters += (containsLowercase ? lowercase : '');
    allowedCharacters += (containsNumber ? number : '');
    allowedCharacters += (containsSpecial ? special : '');

    if (!isAllSettingsDisabled) {
      password = "";

      for (int i = 0; i < length; i++) {
        int index = Random.secure().nextInt(allowedCharacters.length);
        password += allowedCharacters[index];
      }
    }
  }
}
