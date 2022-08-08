// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_password_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GeneratePasswordViewModel on GeneratePasswordViewModelBase, Store {
  Computed<bool>? _$isAllSettingsDisabledComputed;

  @override
  bool get isAllSettingsDisabled => (_$isAllSettingsDisabledComputed ??=
          Computed<bool>(() => super.isAllSettingsDisabled,
              name: 'GeneratePasswordViewModelBase.isAllSettingsDisabled'))
      .value;

  late final _$lengthAtom =
      Atom(name: 'GeneratePasswordViewModelBase.length', context: context);

  @override
  double get length {
    _$lengthAtom.reportRead();
    return super.length;
  }

  @override
  set length(double value) {
    _$lengthAtom.reportWrite(value, super.length, () {
      super.length = value;
    });
  }

  late final _$containsUppercaseAtom = Atom(
      name: 'GeneratePasswordViewModelBase.containsUppercase',
      context: context);

  @override
  bool get containsUppercase {
    _$containsUppercaseAtom.reportRead();
    return super.containsUppercase;
  }

  @override
  set containsUppercase(bool value) {
    _$containsUppercaseAtom.reportWrite(value, super.containsUppercase, () {
      super.containsUppercase = value;
    });
  }

  late final _$containsLowercaseAtom = Atom(
      name: 'GeneratePasswordViewModelBase.containsLowercase',
      context: context);

  @override
  bool get containsLowercase {
    _$containsLowercaseAtom.reportRead();
    return super.containsLowercase;
  }

  @override
  set containsLowercase(bool value) {
    _$containsLowercaseAtom.reportWrite(value, super.containsLowercase, () {
      super.containsLowercase = value;
    });
  }

  late final _$containsNumberAtom = Atom(
      name: 'GeneratePasswordViewModelBase.containsNumber', context: context);

  @override
  bool get containsNumber {
    _$containsNumberAtom.reportRead();
    return super.containsNumber;
  }

  @override
  set containsNumber(bool value) {
    _$containsNumberAtom.reportWrite(value, super.containsNumber, () {
      super.containsNumber = value;
    });
  }

  late final _$containsSpecialAtom = Atom(
      name: 'GeneratePasswordViewModelBase.containsSpecial', context: context);

  @override
  bool get containsSpecial {
    _$containsSpecialAtom.reportRead();
    return super.containsSpecial;
  }

  @override
  set containsSpecial(bool value) {
    _$containsSpecialAtom.reportWrite(value, super.containsSpecial, () {
      super.containsSpecial = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'GeneratePasswordViewModelBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$GeneratePasswordViewModelBaseActionController =
      ActionController(name: 'GeneratePasswordViewModelBase', context: context);

  @override
  void generatePassword() {
    final _$actionInfo = _$GeneratePasswordViewModelBaseActionController
        .startAction(name: 'GeneratePasswordViewModelBase.generatePassword');
    try {
      return super.generatePassword();
    } finally {
      _$GeneratePasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
length: ${length},
containsUppercase: ${containsUppercase},
containsLowercase: ${containsLowercase},
containsNumber: ${containsNumber},
containsSpecial: ${containsSpecial},
password: ${password},
isAllSettingsDisabled: ${isAllSettingsDisabled}
    ''';
  }
}
