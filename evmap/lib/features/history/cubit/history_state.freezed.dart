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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$HistoryLoadingCopyWith<$Res> {
  factory _$$HistoryLoadingCopyWith(
          _$HistoryLoading value, $Res Function(_$HistoryLoading) then) =
      __$$HistoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoading>
    implements _$$HistoryLoadingCopyWith<$Res> {
  __$$HistoryLoadingCopyWithImpl(
      _$HistoryLoading _value, $Res Function(_$HistoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoading implements HistoryLoading {
  const _$HistoryLoading();

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
  const factory HistoryLoading() = _$HistoryLoading;
}

/// @nodoc
abstract class _$$HistoryTransactionLoggedCopyWith<$Res> {
  factory _$$HistoryTransactionLoggedCopyWith(_$HistoryTransactionLogged value,
          $Res Function(_$HistoryTransactionLogged) then) =
      __$$HistoryTransactionLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryModel>? data, bool? isFinish});
}

/// @nodoc
class __$$HistoryTransactionLoggedCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryTransactionLogged>
    implements _$$HistoryTransactionLoggedCopyWith<$Res> {
  __$$HistoryTransactionLoggedCopyWithImpl(_$HistoryTransactionLogged _value,
      $Res Function(_$HistoryTransactionLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isFinish = freezed,
  }) {
    return _then(_$HistoryTransactionLogged(
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

class _$HistoryTransactionLogged implements HistoryTransactionLogged {
  const _$HistoryTransactionLogged(
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransactionLoggedCopyWith<_$HistoryTransactionLogged>
      get copyWith =>
          __$$HistoryTransactionLoggedCopyWithImpl<_$HistoryTransactionLogged>(
              this, _$identity);

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
      final bool? isFinish}) = _$HistoryTransactionLogged;

  List<HistoryModel>? get data;
  bool? get isFinish;
  @JsonKey(ignore: true)
  _$$HistoryTransactionLoggedCopyWith<_$HistoryTransactionLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryErrorCopyWith<$Res> {
  factory _$$HistoryErrorCopyWith(
          _$HistoryError value, $Res Function(_$HistoryError) then) =
      __$$HistoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$HistoryErrorCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryError>
    implements _$$HistoryErrorCopyWith<$Res> {
  __$$HistoryErrorCopyWithImpl(
      _$HistoryError _value, $Res Function(_$HistoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$HistoryError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryError implements HistoryError {
  const _$HistoryError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'HistoryState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorCopyWith<_$HistoryError> get copyWith =>
      __$$HistoryErrorCopyWithImpl<_$HistoryError>(this, _$identity);

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
  const factory HistoryError({final String? error}) = _$HistoryError;

  String? get error;
  @JsonKey(ignore: true)
  _$$HistoryErrorCopyWith<_$HistoryError> get copyWith =>
      throw _privateConstructorUsedError;
}
