// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'l10n_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$L10nState {
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $L10nStateCopyWith<L10nState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $L10nStateCopyWith<$Res> {
  factory $L10nStateCopyWith(L10nState value, $Res Function(L10nState) then) =
      _$L10nStateCopyWithImpl<$Res, L10nState>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$L10nStateCopyWithImpl<$Res, $Val extends L10nState>
    implements $L10nStateCopyWith<$Res> {
  _$L10nStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$L10nStateImplCopyWith<$Res>
    implements $L10nStateCopyWith<$Res> {
  factory _$$L10nStateImplCopyWith(
          _$L10nStateImpl value, $Res Function(_$L10nStateImpl) then) =
      __$$L10nStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$L10nStateImplCopyWithImpl<$Res>
    extends _$L10nStateCopyWithImpl<$Res, _$L10nStateImpl>
    implements _$$L10nStateImplCopyWith<$Res> {
  __$$L10nStateImplCopyWithImpl(
      _$L10nStateImpl _value, $Res Function(_$L10nStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$L10nStateImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$L10nStateImpl extends _L10nState {
  _$L10nStateImpl({required this.locale}) : super._();

  @override
  final Locale locale;

  @override
  String toString() {
    return 'L10nState(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$L10nStateImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$L10nStateImplCopyWith<_$L10nStateImpl> get copyWith =>
      __$$L10nStateImplCopyWithImpl<_$L10nStateImpl>(this, _$identity);
}

abstract class _L10nState extends L10nState {
  factory _L10nState({required final Locale locale}) = _$L10nStateImpl;
  _L10nState._() : super._();

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$L10nStateImplCopyWith<_$L10nStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
