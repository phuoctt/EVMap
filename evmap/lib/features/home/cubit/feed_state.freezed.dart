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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedLoadingImplCopyWith<$Res> {
  factory _$$FeedLoadingImplCopyWith(
          _$FeedLoadingImpl value, $Res Function(_$FeedLoadingImpl) then) =
      __$$FeedLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedLoadingImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedLoadingImpl>
    implements _$$FeedLoadingImplCopyWith<$Res> {
  __$$FeedLoadingImplCopyWithImpl(
      _$FeedLoadingImpl _value, $Res Function(_$FeedLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedLoadingImpl implements FeedLoading {
  const _$FeedLoadingImpl();

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
  const factory FeedLoading() = _$FeedLoadingImpl;
}

/// @nodoc
abstract class _$$FeedLoggedImplCopyWith<$Res> {
  factory _$$FeedLoggedImplCopyWith(
          _$FeedLoggedImpl value, $Res Function(_$FeedLoggedImpl) then) =
      __$$FeedLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeedModel> data});
}

/// @nodoc
class __$$FeedLoggedImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedLoggedImpl>
    implements _$$FeedLoggedImplCopyWith<$Res> {
  __$$FeedLoggedImplCopyWithImpl(
      _$FeedLoggedImpl _value, $Res Function(_$FeedLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FeedLoggedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
    ));
  }
}

/// @nodoc

class _$FeedLoggedImpl implements FeedLogged {
  const _$FeedLoggedImpl({required final List<FeedModel> data}) : _data = data;

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

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedLoggedImplCopyWith<_$FeedLoggedImpl> get copyWith =>
      __$$FeedLoggedImplCopyWithImpl<_$FeedLoggedImpl>(this, _$identity);

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
      _$FeedLoggedImpl;

  List<FeedModel> get data;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedLoggedImplCopyWith<_$FeedLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedErrorImplCopyWith<$Res> {
  factory _$$FeedErrorImplCopyWith(
          _$FeedErrorImpl value, $Res Function(_$FeedErrorImpl) then) =
      __$$FeedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$FeedErrorImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedErrorImpl>
    implements _$$FeedErrorImplCopyWith<$Res> {
  __$$FeedErrorImplCopyWithImpl(
      _$FeedErrorImpl _value, $Res Function(_$FeedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FeedErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedErrorImpl implements FeedError {
  const _$FeedErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'FeedState.error(error: $error)';
  }

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedErrorImplCopyWith<_$FeedErrorImpl> get copyWith =>
      __$$FeedErrorImplCopyWithImpl<_$FeedErrorImpl>(this, _$identity);

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
  const factory FeedError({final String? error}) = _$FeedErrorImpl;

  String? get error;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedErrorImplCopyWith<_$FeedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
