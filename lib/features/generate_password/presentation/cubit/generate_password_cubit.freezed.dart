// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeneratePasswordState {
  PasswordSettings get passwordSettings => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isCopied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneratePasswordStateCopyWith<GeneratePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratePasswordStateCopyWith<$Res> {
  factory $GeneratePasswordStateCopyWith(GeneratePasswordState value,
          $Res Function(GeneratePasswordState) then) =
      _$GeneratePasswordStateCopyWithImpl<$Res, GeneratePasswordState>;
  @useResult
  $Res call(
      {PasswordSettings passwordSettings, String password, bool isCopied});

  $PasswordSettingsCopyWith<$Res> get passwordSettings;
}

/// @nodoc
class _$GeneratePasswordStateCopyWithImpl<$Res,
        $Val extends GeneratePasswordState>
    implements $GeneratePasswordStateCopyWith<$Res> {
  _$GeneratePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordSettings = null,
    Object? password = null,
    Object? isCopied = null,
  }) {
    return _then(_value.copyWith(
      passwordSettings: null == passwordSettings
          ? _value.passwordSettings
          : passwordSettings // ignore: cast_nullable_to_non_nullable
              as PasswordSettings,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isCopied: null == isCopied
          ? _value.isCopied
          : isCopied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordSettingsCopyWith<$Res> get passwordSettings {
    return $PasswordSettingsCopyWith<$Res>(_value.passwordSettings, (value) {
      return _then(_value.copyWith(passwordSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeneratePasswordStateCopyWith<$Res>
    implements $GeneratePasswordStateCopyWith<$Res> {
  factory _$$_GeneratePasswordStateCopyWith(_$_GeneratePasswordState value,
          $Res Function(_$_GeneratePasswordState) then) =
      __$$_GeneratePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PasswordSettings passwordSettings, String password, bool isCopied});

  @override
  $PasswordSettingsCopyWith<$Res> get passwordSettings;
}

/// @nodoc
class __$$_GeneratePasswordStateCopyWithImpl<$Res>
    extends _$GeneratePasswordStateCopyWithImpl<$Res, _$_GeneratePasswordState>
    implements _$$_GeneratePasswordStateCopyWith<$Res> {
  __$$_GeneratePasswordStateCopyWithImpl(_$_GeneratePasswordState _value,
      $Res Function(_$_GeneratePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordSettings = null,
    Object? password = null,
    Object? isCopied = null,
  }) {
    return _then(_$_GeneratePasswordState(
      passwordSettings: null == passwordSettings
          ? _value.passwordSettings
          : passwordSettings // ignore: cast_nullable_to_non_nullable
              as PasswordSettings,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isCopied: null == isCopied
          ? _value.isCopied
          : isCopied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GeneratePasswordState implements _GeneratePasswordState {
  const _$_GeneratePasswordState(
      {required this.passwordSettings,
      required this.password,
      required this.isCopied});

  @override
  final PasswordSettings passwordSettings;
  @override
  final String password;
  @override
  final bool isCopied;

  @override
  String toString() {
    return 'GeneratePasswordState(passwordSettings: $passwordSettings, password: $password, isCopied: $isCopied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratePasswordState &&
            (identical(other.passwordSettings, passwordSettings) ||
                other.passwordSettings == passwordSettings) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isCopied, isCopied) ||
                other.isCopied == isCopied));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, passwordSettings, password, isCopied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneratePasswordStateCopyWith<_$_GeneratePasswordState> get copyWith =>
      __$$_GeneratePasswordStateCopyWithImpl<_$_GeneratePasswordState>(
          this, _$identity);
}

abstract class _GeneratePasswordState implements GeneratePasswordState {
  const factory _GeneratePasswordState(
      {required final PasswordSettings passwordSettings,
      required final String password,
      required final bool isCopied}) = _$_GeneratePasswordState;

  @override
  PasswordSettings get passwordSettings;
  @override
  String get password;
  @override
  bool get isCopied;
  @override
  @JsonKey(ignore: true)
  _$$_GeneratePasswordStateCopyWith<_$_GeneratePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
