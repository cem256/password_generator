// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordSettingsImpl _$$PasswordSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordSettingsImpl(
      length: (json['length'] as num?)?.toDouble() ??
          PasswordConstants.initialLength,
      hasLowercase: json['hasLowercase'] as bool? ?? true,
      hasUppercase: json['hasUppercase'] as bool? ?? true,
      hasNumbers: json['hasNumbers'] as bool? ?? true,
      hasSpecial: json['hasSpecial'] as bool? ?? true,
    );

Map<String, dynamic> _$$PasswordSettingsImplToJson(
        _$PasswordSettingsImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'hasLowercase': instance.hasLowercase,
      'hasUppercase': instance.hasUppercase,
      'hasNumbers': instance.hasNumbers,
      'hasSpecial': instance.hasSpecial,
    };
