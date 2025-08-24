// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FeedModel> data)? feedLogged,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FeedModel> data)? feedLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FeedLoadingCopyWith<$Res> {
  factory _$$FeedLoadingCopyWith(
          _$FeedLoading value, $Res Function(_$FeedLoading) then) =
      __$$FeedLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedLoadingCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedLoading>
    implements _$$FeedLoadingCopyWith<$Res> {
  __$$FeedLoadingCopyWithImpl(
      _$FeedLoading _value, $Res Function(_$FeedLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedLoading implements FeedLoading {
  const _$FeedLoading();

  @override
  String toString() {
    return 'FeedState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FeedModel> data)? feedLogged,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FeedModel> data)? feedLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class FeedLoading implements FeedState {
  const factory FeedLoading() = _$FeedLoading;
}

/// @nodoc
abstract class _$$FeedLoggedCopyWith<$Res> {
  factory _$$FeedLoggedCopyWith(
          _$FeedLogged value, $Res Function(_$FeedLogged) then) =
      __$$FeedLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeedModel> data});
}

/// @nodoc
class __$$FeedLoggedCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedLogged>
    implements _$$FeedLoggedCopyWith<$Res> {
  __$$FeedLoggedCopyWithImpl(
      _$FeedLogged _value, $Res Function(_$FeedLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FeedLogged(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
    ));
  }
}

/// @nodoc

class _$FeedLogged implements FeedLogged {
  const _$FeedLogged({required final List<FeedModel> data}) : _data = data;

  final List<FeedModel> _data;
  @override
  List<FeedModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FeedState.feedLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedLoggedCopyWith<_$FeedLogged> get copyWith =>
      __$$FeedLoggedCopyWithImpl<_$FeedLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FeedModel> data)? feedLogged,
    TResult? Function(String? error)? error,
  }) {
    return feedLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FeedModel> data)? feedLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (feedLogged != null) {
      return feedLogged(data);
    }
    return orElse();
  }
}

abstract class FeedLogged implements FeedState {
  const factory FeedLogged({required final List<FeedModel> data}) =
      _$FeedLogged;

  List<FeedModel> get data;
  @JsonKey(ignore: true)
  _$$FeedLoggedCopyWith<_$FeedLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedErrorCopyWith<$Res> {
  factory _$$FeedErrorCopyWith(
          _$FeedError value, $Res Function(_$FeedError) then) =
      __$$FeedErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$FeedErrorCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedError>
    implements _$$FeedErrorCopyWith<$Res> {
  __$$FeedErrorCopyWithImpl(
      _$FeedError _value, $Res Function(_$FeedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FeedError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedError implements FeedError {
  const _$FeedError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'FeedState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedErrorCopyWith<_$FeedError> get copyWith =>
      __$$FeedErrorCopyWithImpl<_$FeedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FeedModel> data)? feedLogged,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FeedModel> data)? feedLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class FeedError implements FeedState {
  const factory FeedError({final String? error}) = _$FeedError;

  String? get error;
  @JsonKey(ignore: true)
  _$$FeedErrorCopyWith<_$FeedError> get copyWith =>
      throw _privateConstructorUsedError;
}
