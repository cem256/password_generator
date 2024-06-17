// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordSettings _$PasswordSettingsFromJson(Map<String, dynamic> json) {
  return _PasswordSettings.fromJson(json);
}

/// @nodoc
mixin _$PasswordSettings {
  double get length => throw _privateConstructorUsedError;
  bool get hasLowercase => throw _privateConstructorUsedError;
  bool get hasUppercase => throw _privateConstructorUsedError;
  bool get hasNumbers => throw _privateConstructorUsedError;
  bool get hasSpecial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordSettingsCopyWith<PasswordSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordSettingsCopyWith<$Res> {
  factory $PasswordSettingsCopyWith(
          PasswordSettings value, $Res Function(PasswordSettings) then) =
      _$PasswordSettingsCopyWithImpl<$Res, PasswordSettings>;
  @useResult
  $Res call(
      {double length,
      bool hasLowercase,
      bool hasUppercase,
      bool hasNumbers,
      bool hasSpecial});
}

/// @nodoc
class _$PasswordSettingsCopyWithImpl<$Res, $Val extends PasswordSettings>
    implements $PasswordSettingsCopyWith<$Res> {
  _$PasswordSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? hasLowercase = null,
    Object? hasUppercase = null,
    Object? hasNumbers = null,
    Object? hasSpecial = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      hasLowercase: null == hasLowercase
          ? _value.hasLowercase
          : hasLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUppercase: null == hasUppercase
          ? _value.hasUppercase
          : hasUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNumbers: null == hasNumbers
          ? _value.hasNumbers
          : hasNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecial: null == hasSpecial
          ? _value.hasSpecial
          : hasSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordSettingsImplCopyWith<$Res>
    implements $PasswordSettingsCopyWith<$Res> {
  factory _$$PasswordSettingsImplCopyWith(_$PasswordSettingsImpl value,
          $Res Function(_$PasswordSettingsImpl) then) =
      __$$PasswordSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double length,
      bool hasLowercase,
      bool hasUppercase,
      bool hasNumbers,
      bool hasSpecial});
}

/// @nodoc
class __$$PasswordSettingsImplCopyWithImpl<$Res>
    extends _$PasswordSettingsCopyWithImpl<$Res, _$PasswordSettingsImpl>
    implements _$$PasswordSettingsImplCopyWith<$Res> {
  __$$PasswordSettingsImplCopyWithImpl(_$PasswordSettingsImpl _value,
      $Res Function(_$PasswordSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? hasLowercase = null,
    Object? hasUppercase = null,
    Object? hasNumbers = null,
    Object? hasSpecial = null,
  }) {
    return _then(_$PasswordSettingsImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      hasLowercase: null == hasLowercase
          ? _value.hasLowercase
          : hasLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUppercase: null == hasUppercase
          ? _value.hasUppercase
          : hasUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNumbers: null == hasNumbers
          ? _value.hasNumbers
          : hasNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecial: null == hasSpecial
          ? _value.hasSpecial
          : hasSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordSettingsImpl extends _PasswordSettings {
  const _$PasswordSettingsImpl(
      {this.length = PasswordConstants.initialLength,
      this.hasLowercase = true,
      this.hasUppercase = true,
      this.hasNumbers = true,
      this.hasSpecial = true})
      : super._();

  factory _$PasswordSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordSettingsImplFromJson(json);

  @override
  @JsonKey()
  final double length;
  @override
  @JsonKey()
  final bool hasLowercase;
  @override
  @JsonKey()
  final bool hasUppercase;
  @override
  @JsonKey()
  final bool hasNumbers;
  @override
  @JsonKey()
  final bool hasSpecial;

  @override
  String toString() {
    return 'PasswordSettings(length: $length, hasLowercase: $hasLowercase, hasUppercase: $hasUppercase, hasNumbers: $hasNumbers, hasSpecial: $hasSpecial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordSettingsImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.hasLowercase, hasLowercase) ||
                other.hasLowercase == hasLowercase) &&
            (identical(other.hasUppercase, hasUppercase) ||
                other.hasUppercase == hasUppercase) &&
            (identical(other.hasNumbers, hasNumbers) ||
                other.hasNumbers == hasNumbers) &&
            (identical(other.hasSpecial, hasSpecial) ||
                other.hasSpecial == hasSpecial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, length, hasLowercase, hasUppercase, hasNumbers, hasSpecial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordSettingsImplCopyWith<_$PasswordSettingsImpl> get copyWith =>
      __$$PasswordSettingsImplCopyWithImpl<_$PasswordSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordSettingsImplToJson(
      this,
    );
  }
}

abstract class _PasswordSettings extends PasswordSettings {
  const factory _PasswordSettings(
      {final double length,
      final bool hasLowercase,
      final bool hasUppercase,
      final bool hasNumbers,
      final bool hasSpecial}) = _$PasswordSettingsImpl;
  const _PasswordSettings._() : super._();

  factory _PasswordSettings.fromJson(Map<String, dynamic> json) =
      _$PasswordSettingsImpl.fromJson;

  @override
  double get length;
  @override
  bool get hasLowercase;
  @override
  bool get hasUppercase;
  @override
  bool get hasNumbers;
  @override
  bool get hasSpecial;
  @override
  @JsonKey(ignore: true)
  _$$PasswordSettingsImplCopyWith<_$PasswordSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
