// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordHistoryState {
  List<String> get history => throw _privateConstructorUsedError;
  bool get isCopied => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  /// Create a copy of PasswordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordHistoryStateCopyWith<PasswordHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordHistoryStateCopyWith<$Res> {
  factory $PasswordHistoryStateCopyWith(PasswordHistoryState value,
          $Res Function(PasswordHistoryState) then) =
      _$PasswordHistoryStateCopyWithImpl<$Res, PasswordHistoryState>;
  @useResult
  $Res call({List<String> history, bool isCopied, bool isDeleted});
}

/// @nodoc
class _$PasswordHistoryStateCopyWithImpl<$Res,
        $Val extends PasswordHistoryState>
    implements $PasswordHistoryStateCopyWith<$Res> {
  _$PasswordHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isCopied = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCopied: null == isCopied
          ? _value.isCopied
          : isCopied // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordHistoryStateImplCopyWith<$Res>
    implements $PasswordHistoryStateCopyWith<$Res> {
  factory _$$PasswordHistoryStateImplCopyWith(_$PasswordHistoryStateImpl value,
          $Res Function(_$PasswordHistoryStateImpl) then) =
      __$$PasswordHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> history, bool isCopied, bool isDeleted});
}

/// @nodoc
class __$$PasswordHistoryStateImplCopyWithImpl<$Res>
    extends _$PasswordHistoryStateCopyWithImpl<$Res, _$PasswordHistoryStateImpl>
    implements _$$PasswordHistoryStateImplCopyWith<$Res> {
  __$$PasswordHistoryStateImplCopyWithImpl(_$PasswordHistoryStateImpl _value,
      $Res Function(_$PasswordHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isCopied = null,
    Object? isDeleted = null,
  }) {
    return _then(_$PasswordHistoryStateImpl(
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCopied: null == isCopied
          ? _value.isCopied
          : isCopied // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordHistoryStateImpl extends _PasswordHistoryState {
  const _$PasswordHistoryStateImpl(
      {final List<String> history = const [],
      this.isCopied = false,
      this.isDeleted = false})
      : _history = history,
        super._();

  final List<String> _history;
  @override
  @JsonKey()
  List<String> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey()
  final bool isCopied;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'PasswordHistoryState(history: $history, isCopied: $isCopied, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordHistoryStateImpl &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.isCopied, isCopied) ||
                other.isCopied == isCopied) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_history), isCopied, isDeleted);

  /// Create a copy of PasswordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordHistoryStateImplCopyWith<_$PasswordHistoryStateImpl>
      get copyWith =>
          __$$PasswordHistoryStateImplCopyWithImpl<_$PasswordHistoryStateImpl>(
              this, _$identity);
}

abstract class _PasswordHistoryState extends PasswordHistoryState {
  const factory _PasswordHistoryState(
      {final List<String> history,
      final bool isCopied,
      final bool isDeleted}) = _$PasswordHistoryStateImpl;
  const _PasswordHistoryState._() : super._();

  @override
  List<String> get history;
  @override
  bool get isCopied;
  @override
  bool get isDeleted;

  /// Create a copy of PasswordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordHistoryStateImplCopyWith<_$PasswordHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
