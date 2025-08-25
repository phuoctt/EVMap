// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_point_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPointState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserPointModel user)? logged,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserPointModel user)? logged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPointStateCopyWith<$Res> {
  factory $UserPointStateCopyWith(
          UserPointState value, $Res Function(UserPointState) then) =
      _$UserPointStateCopyWithImpl<$Res, UserPointState>;
}

/// @nodoc
class _$UserPointStateCopyWithImpl<$Res, $Val extends UserPointState>
    implements $UserPointStateCopyWith<$Res> {
  _$UserPointStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserPointLoadingImplCopyWith<$Res> {
  factory _$$UserPointLoadingImplCopyWith(_$UserPointLoadingImpl value,
          $Res Function(_$UserPointLoadingImpl) then) =
      __$$UserPointLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPointLoadingImplCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointLoadingImpl>
    implements _$$UserPointLoadingImplCopyWith<$Res> {
  __$$UserPointLoadingImplCopyWithImpl(_$UserPointLoadingImpl _value,
      $Res Function(_$UserPointLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserPointLoadingImpl implements UserPointLoading {
  const _$UserPointLoadingImpl();

  @override
  String toString() {
    return 'UserPointState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserPointModel user)? logged,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserPointModel user)? logged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class UserPointLoading implements UserPointState {
  const factory UserPointLoading() = _$UserPointLoadingImpl;
}

/// @nodoc
abstract class _$$UserPointLoggedImplCopyWith<$Res> {
  factory _$$UserPointLoggedImplCopyWith(_$UserPointLoggedImpl value,
          $Res Function(_$UserPointLoggedImpl) then) =
      __$$UserPointLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPointModel user});
}

/// @nodoc
class __$$UserPointLoggedImplCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointLoggedImpl>
    implements _$$UserPointLoggedImplCopyWith<$Res> {
  __$$UserPointLoggedImplCopyWithImpl(
      _$UserPointLoggedImpl _value, $Res Function(_$UserPointLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserPointLoggedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserPointModel,
    ));
  }
}

/// @nodoc

class _$UserPointLoggedImpl implements UserPointLogged {
  const _$UserPointLoggedImpl(this.user);

  @override
  final UserPointModel user;

  @override
  String toString() {
    return 'UserPointState.logged(user: $user)';
  }

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointLoggedImplCopyWith<_$UserPointLoggedImpl> get copyWith =>
      __$$UserPointLoggedImplCopyWithImpl<_$UserPointLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserPointModel user)? logged,
    TResult? Function(String? error)? error,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserPointModel user)? logged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }
}

abstract class UserPointLogged implements UserPointState {
  const factory UserPointLogged(final UserPointModel user) =
      _$UserPointLoggedImpl;

  UserPointModel get user;

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPointLoggedImplCopyWith<_$UserPointLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPointErrorImplCopyWith<$Res> {
  factory _$$UserPointErrorImplCopyWith(_$UserPointErrorImpl value,
          $Res Function(_$UserPointErrorImpl) then) =
      __$$UserPointErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$UserPointErrorImplCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointErrorImpl>
    implements _$$UserPointErrorImplCopyWith<$Res> {
  __$$UserPointErrorImplCopyWithImpl(
      _$UserPointErrorImpl _value, $Res Function(_$UserPointErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UserPointErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserPointErrorImpl implements UserPointError {
  const _$UserPointErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'UserPointState.error(error: $error)';
  }

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointErrorImplCopyWith<_$UserPointErrorImpl> get copyWith =>
      __$$UserPointErrorImplCopyWithImpl<_$UserPointErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserPointModel user)? logged,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserPointModel user)? logged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class UserPointError implements UserPointState {
  const factory UserPointError({final String? error}) = _$UserPointErrorImpl;

  String? get error;

  /// Create a copy of UserPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPointErrorImplCopyWith<_$UserPointErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
