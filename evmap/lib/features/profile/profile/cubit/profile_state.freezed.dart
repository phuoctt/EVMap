// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function()? updateSuccess,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function()? updateSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileLoadingCopyWith<$Res> {
  factory _$$ProfileLoadingCopyWith(
          _$ProfileLoading value, $Res Function(_$ProfileLoading) then) =
      __$$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoading>
    implements _$$ProfileLoadingCopyWith<$Res> {
  __$$ProfileLoadingCopyWithImpl(
      _$ProfileLoading _value, $Res Function(_$ProfileLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function()? updateSuccess,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function()? updateSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class _$$ProfileLoggedCopyWith<$Res> {
  factory _$$ProfileLoggedCopyWith(
          _$ProfileLogged value, $Res Function(_$ProfileLogged) then) =
      __$$ProfileLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$ProfileLoggedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLogged>
    implements _$$ProfileLoggedCopyWith<$Res> {
  __$$ProfileLoggedCopyWithImpl(
      _$ProfileLogged _value, $Res Function(_$ProfileLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileLogged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$ProfileLogged implements ProfileLogged {
  const _$ProfileLogged(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.logged(user: $user)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoggedCopyWith<_$ProfileLogged> get copyWith =>
      __$$ProfileLoggedCopyWithImpl<_$ProfileLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function()? updateSuccess,
    TResult? Function(String? error)? error,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function()? updateSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }
}

abstract class ProfileLogged implements ProfileState {
  const factory ProfileLogged(final UserModel user) = _$ProfileLogged;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$ProfileLoggedCopyWith<_$ProfileLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileUpdateSuccessCopyWith<$Res> {
  factory _$$ProfileUpdateSuccessCopyWith(_$ProfileUpdateSuccess value,
          $Res Function(_$ProfileUpdateSuccess) then) =
      __$$ProfileUpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileUpdateSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileUpdateSuccess>
    implements _$$ProfileUpdateSuccessCopyWith<$Res> {
  __$$ProfileUpdateSuccessCopyWithImpl(_$ProfileUpdateSuccess _value,
      $Res Function(_$ProfileUpdateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileUpdateSuccess implements ProfileUpdateSuccess {
  const _$ProfileUpdateSuccess();

  @override
  String toString() {
    return 'ProfileState.updateSuccess()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function()? updateSuccess,
    TResult? Function(String? error)? error,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function()? updateSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }
}

abstract class ProfileUpdateSuccess implements ProfileState {
  const factory ProfileUpdateSuccess() = _$ProfileUpdateSuccess;
}

/// @nodoc
abstract class _$$ProfileErrorCopyWith<$Res> {
  factory _$$ProfileErrorCopyWith(
          _$ProfileError value, $Res Function(_$ProfileError) then) =
      __$$ProfileErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ProfileErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileError>
    implements _$$ProfileErrorCopyWith<$Res> {
  __$$ProfileErrorCopyWithImpl(
      _$ProfileError _value, $Res Function(_$ProfileError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProfileError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileError implements ProfileError {
  const _$ProfileError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ProfileState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorCopyWith<_$ProfileError> get copyWith =>
      __$$ProfileErrorCopyWithImpl<_$ProfileError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function()? updateSuccess,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function()? updateSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError({final String? error}) = _$ProfileError;

  String? get error;
  @JsonKey(ignore: true)
  _$$ProfileErrorCopyWith<_$ProfileError> get copyWith =>
      throw _privateConstructorUsedError;
}
