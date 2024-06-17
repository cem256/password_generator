// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_password_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneratePasswordStateImpl _$$GeneratePasswordStateImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneratePasswordStateImpl(
      passwordSettings: json['passwordSettings'] == null
          ? const PasswordSettings()
          : PasswordSettings.fromJson(
              json['passwordSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeneratePasswordStateImplToJson(
        _$GeneratePasswordStateImpl instance) =>
    <String, dynamic>{
      'passwordSettings': instance.passwordSettings,
    };
