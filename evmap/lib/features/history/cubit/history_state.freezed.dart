// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HistoryLoadingImplCopyWith<$Res> {
  factory _$$HistoryLoadingImplCopyWith(_$HistoryLoadingImpl value,
          $Res Function(_$HistoryLoadingImpl) then) =
      __$$HistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingImpl>
    implements _$$HistoryLoadingImplCopyWith<$Res> {
  __$$HistoryLoadingImplCopyWithImpl(
      _$HistoryLoadingImpl _value, $Res Function(_$HistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HistoryLoadingImpl implements HistoryLoading {
  const _$HistoryLoadingImpl();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class HistoryLoading implements HistoryState {
  const factory HistoryLoading() = _$HistoryLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryTransactionLoggedImplCopyWith<$Res> {
  factory _$$HistoryTransactionLoggedImplCopyWith(
          _$HistoryTransactionLoggedImpl value,
          $Res Function(_$HistoryTransactionLoggedImpl) then) =
      __$$HistoryTransactionLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryModel>? data, bool? isFinish});
}

/// @nodoc
class __$$HistoryTransactionLoggedImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryTransactionLoggedImpl>
    implements _$$HistoryTransactionLoggedImplCopyWith<$Res> {
  __$$HistoryTransactionLoggedImplCopyWithImpl(
      _$HistoryTransactionLoggedImpl _value,
      $Res Function(_$HistoryTransactionLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isFinish = freezed,
  }) {
    return _then(_$HistoryTransactionLoggedImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>?,
      isFinish: freezed == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$HistoryTransactionLoggedImpl implements HistoryTransactionLogged {
  const _$HistoryTransactionLoggedImpl(
      {final List<HistoryModel>? data, this.isFinish})
      : _data = data;

  final List<HistoryModel>? _data;
  @override
  List<HistoryModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFinish;

  @override
  String toString() {
    return 'HistoryState.historyTransactionLogged(data: $data, isFinish: $isFinish)';
  }

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransactionLoggedImplCopyWith<_$HistoryTransactionLoggedImpl>
      get copyWith => __$$HistoryTransactionLoggedImplCopyWithImpl<
          _$HistoryTransactionLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult? Function(String? error)? error,
  }) {
    return historyTransactionLogged?.call(data, isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (historyTransactionLogged != null) {
      return historyTransactionLogged(data, isFinish);
    }
    return orElse();
  }
}

abstract class HistoryTransactionLogged implements HistoryState {
  const factory HistoryTransactionLogged(
      {final List<HistoryModel>? data,
      final bool? isFinish}) = _$HistoryTransactionLoggedImpl;

  List<HistoryModel>? get data;
  bool? get isFinish;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryTransactionLoggedImplCopyWith<_$HistoryTransactionLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryErrorImplCopyWith<$Res> {
  factory _$$HistoryErrorImplCopyWith(
          _$HistoryErrorImpl value, $Res Function(_$HistoryErrorImpl) then) =
      __$$HistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$HistoryErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryErrorImpl>
    implements _$$HistoryErrorImplCopyWith<$Res> {
  __$$HistoryErrorImplCopyWithImpl(
      _$HistoryErrorImpl _value, $Res Function(_$HistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$HistoryErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryErrorImpl implements HistoryError {
  const _$HistoryErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'HistoryState.error(error: $error)';
  }

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      __$$HistoryErrorImplCopyWithImpl<_$HistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryModel>? data, bool? isFinish)?
        historyTransactionLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class HistoryError implements HistoryState {
  const factory HistoryError({final String? error}) = _$HistoryErrorImpl;

  String? get error;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
