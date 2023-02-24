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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordSettings {
  double get length => throw _privateConstructorUsedError;
  bool get hasLowercase => throw _privateConstructorUsedError;
  bool get hasUppercase => throw _privateConstructorUsedError;
  bool get hasNumbers => throw _privateConstructorUsedError;
  bool get hasSpecial => throw _privateConstructorUsedError;

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
abstract class _$$_PasswordSettingsCopyWith<$Res>
    implements $PasswordSettingsCopyWith<$Res> {
  factory _$$_PasswordSettingsCopyWith(
          _$_PasswordSettings value, $Res Function(_$_PasswordSettings) then) =
      __$$_PasswordSettingsCopyWithImpl<$Res>;
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
class __$$_PasswordSettingsCopyWithImpl<$Res>
    extends _$PasswordSettingsCopyWithImpl<$Res, _$_PasswordSettings>
    implements _$$_PasswordSettingsCopyWith<$Res> {
  __$$_PasswordSettingsCopyWithImpl(
      _$_PasswordSettings _value, $Res Function(_$_PasswordSettings) _then)
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
    return _then(_$_PasswordSettings(
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

class _$_PasswordSettings extends _PasswordSettings {
  const _$_PasswordSettings(
      {required this.length,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.hasNumbers,
      required this.hasSpecial})
      : super._();

  @override
  final double length;
  @override
  final bool hasLowercase;
  @override
  final bool hasUppercase;
  @override
  final bool hasNumbers;
  @override
  final bool hasSpecial;

  @override
  String toString() {
    return 'PasswordSettings(length: $length, hasLowercase: $hasLowercase, hasUppercase: $hasUppercase, hasNumbers: $hasNumbers, hasSpecial: $hasSpecial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordSettings &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, length, hasLowercase, hasUppercase, hasNumbers, hasSpecial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordSettingsCopyWith<_$_PasswordSettings> get copyWith =>
      __$$_PasswordSettingsCopyWithImpl<_$_PasswordSettings>(this, _$identity);
}

abstract class _PasswordSettings extends PasswordSettings {
  const factory _PasswordSettings(
      {required final double length,
      required final bool hasLowercase,
      required final bool hasUppercase,
      required final bool hasNumbers,
      required final bool hasSpecial}) = _$_PasswordSettings;
  const _PasswordSettings._() : super._();

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
  _$$_PasswordSettingsCopyWith<_$_PasswordSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
