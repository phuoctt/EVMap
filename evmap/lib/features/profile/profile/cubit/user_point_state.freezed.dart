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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$UserPointLoadingCopyWith<$Res> {
  factory _$$UserPointLoadingCopyWith(
          _$UserPointLoading value, $Res Function(_$UserPointLoading) then) =
      __$$UserPointLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPointLoadingCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointLoading>
    implements _$$UserPointLoadingCopyWith<$Res> {
  __$$UserPointLoadingCopyWithImpl(
      _$UserPointLoading _value, $Res Function(_$UserPointLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserPointLoading implements UserPointLoading {
  const _$UserPointLoading();

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
  const factory UserPointLoading() = _$UserPointLoading;
}

/// @nodoc
abstract class _$$UserPointLoggedCopyWith<$Res> {
  factory _$$UserPointLoggedCopyWith(
          _$UserPointLogged value, $Res Function(_$UserPointLogged) then) =
      __$$UserPointLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPointModel user});
}

/// @nodoc
class __$$UserPointLoggedCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointLogged>
    implements _$$UserPointLoggedCopyWith<$Res> {
  __$$UserPointLoggedCopyWithImpl(
      _$UserPointLogged _value, $Res Function(_$UserPointLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserPointLogged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserPointModel,
    ));
  }
}

/// @nodoc

class _$UserPointLogged implements UserPointLogged {
  const _$UserPointLogged(this.user);

  @override
  final UserPointModel user;

  @override
  String toString() {
    return 'UserPointState.logged(user: $user)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointLoggedCopyWith<_$UserPointLogged> get copyWith =>
      __$$UserPointLoggedCopyWithImpl<_$UserPointLogged>(this, _$identity);

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
  const factory UserPointLogged(final UserPointModel user) = _$UserPointLogged;

  UserPointModel get user;
  @JsonKey(ignore: true)
  _$$UserPointLoggedCopyWith<_$UserPointLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPointErrorCopyWith<$Res> {
  factory _$$UserPointErrorCopyWith(
          _$UserPointError value, $Res Function(_$UserPointError) then) =
      __$$UserPointErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$UserPointErrorCopyWithImpl<$Res>
    extends _$UserPointStateCopyWithImpl<$Res, _$UserPointError>
    implements _$$UserPointErrorCopyWith<$Res> {
  __$$UserPointErrorCopyWithImpl(
      _$UserPointError _value, $Res Function(_$UserPointError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UserPointError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserPointError implements UserPointError {
  const _$UserPointError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'UserPointState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointErrorCopyWith<_$UserPointError> get copyWith =>
      __$$UserPointErrorCopyWithImpl<_$UserPointError>(this, _$identity);

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
  const factory UserPointError({final String? error}) = _$UserPointError;

  String? get error;
  @JsonKey(ignore: true)
  _$$UserPointErrorCopyWith<_$UserPointError> get copyWith =>
      throw _privateConstructorUsedError;
}
