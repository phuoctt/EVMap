// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopUpState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpStateCopyWith<$Res> {
  factory $TopUpStateCopyWith(
          TopUpState value, $Res Function(TopUpState) then) =
      _$TopUpStateCopyWithImpl<$Res, TopUpState>;
}

/// @nodoc
class _$TopUpStateCopyWithImpl<$Res, $Val extends TopUpState>
    implements $TopUpStateCopyWith<$Res> {
  _$TopUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TopUpLoadingImplCopyWith<$Res> {
  factory _$$TopUpLoadingImplCopyWith(
          _$TopUpLoadingImpl value, $Res Function(_$TopUpLoadingImpl) then) =
      __$$TopUpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopUpLoadingImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpLoadingImpl>
    implements _$$TopUpLoadingImplCopyWith<$Res> {
  __$$TopUpLoadingImplCopyWithImpl(
      _$TopUpLoadingImpl _value, $Res Function(_$TopUpLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopUpLoadingImpl implements TopUpLoading {
  const _$TopUpLoadingImpl();

  @override
  String toString() {
    return 'TopUpState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class TopUpLoading implements TopUpState {
  const factory TopUpLoading() = _$TopUpLoadingImpl;
}

/// @nodoc
abstract class _$$TopUpLoadingScreenImplCopyWith<$Res> {
  factory _$$TopUpLoadingScreenImplCopyWith(_$TopUpLoadingScreenImpl value,
          $Res Function(_$TopUpLoadingScreenImpl) then) =
      __$$TopUpLoadingScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopUpLoadingScreenImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpLoadingScreenImpl>
    implements _$$TopUpLoadingScreenImplCopyWith<$Res> {
  __$$TopUpLoadingScreenImplCopyWithImpl(_$TopUpLoadingScreenImpl _value,
      $Res Function(_$TopUpLoadingScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopUpLoadingScreenImpl implements TopUpLoadingScreen {
  const _$TopUpLoadingScreenImpl();

  @override
  String toString() {
    return 'TopUpState.loadingScreen()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return loadingScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadingScreen != null) {
      return loadingScreen();
    }
    return orElse();
  }
}

abstract class TopUpLoadingScreen implements TopUpState {
  const factory TopUpLoadingScreen() = _$TopUpLoadingScreenImpl;
}

/// @nodoc
abstract class _$$TopUpSuccessImplCopyWith<$Res> {
  factory _$$TopUpSuccessImplCopyWith(
          _$TopUpSuccessImpl value, $Res Function(_$TopUpSuccessImpl) then) =
      __$$TopUpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpSuccessImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpSuccessImpl>
    implements _$$TopUpSuccessImplCopyWith<$Res> {
  __$$TopUpSuccessImplCopyWithImpl(
      _$TopUpSuccessImpl _value, $Res Function(_$TopUpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpSuccessImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpSuccessImpl implements TopUpSuccess {
  const _$TopUpSuccessImpl({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.success(data: $data)';
  }

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpSuccessImplCopyWith<_$TopUpSuccessImpl> get copyWith =>
      __$$TopUpSuccessImplCopyWithImpl<_$TopUpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }
}

abstract class TopUpSuccess implements TopUpState {
  const factory TopUpSuccess({final PaymentModel? data}) = _$TopUpSuccessImpl;

  PaymentModel? get data;

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpSuccessImplCopyWith<_$TopUpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpStatusSuccessImplCopyWith<$Res> {
  factory _$$TopUpStatusSuccessImplCopyWith(_$TopUpStatusSuccessImpl value,
          $Res Function(_$TopUpStatusSuccessImpl) then) =
      __$$TopUpStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpStatusSuccessImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpStatusSuccessImpl>
    implements _$$TopUpStatusSuccessImplCopyWith<$Res> {
  __$$TopUpStatusSuccessImplCopyWithImpl(_$TopUpStatusSuccessImpl _value,
      $Res Function(_$TopUpStatusSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpStatusSuccessImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpStatusSuccessImpl implements TopUpStatusSuccess {
  const _$TopUpStatusSuccessImpl({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.statusSuccess(data: $data)';
  }

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpStatusSuccessImplCopyWith<_$TopUpStatusSuccessImpl> get copyWith =>
      __$$TopUpStatusSuccessImplCopyWithImpl<_$TopUpStatusSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return statusSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (statusSuccess != null) {
      return statusSuccess(data);
    }
    return orElse();
  }
}

abstract class TopUpStatusSuccess implements TopUpState {
  const factory TopUpStatusSuccess({final PaymentModel? data}) =
      _$TopUpStatusSuccessImpl;

  PaymentModel? get data;

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpStatusSuccessImplCopyWith<_$TopUpStatusSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpDetailPaymentImplCopyWith<$Res> {
  factory _$$TopUpDetailPaymentImplCopyWith(_$TopUpDetailPaymentImpl value,
          $Res Function(_$TopUpDetailPaymentImpl) then) =
      __$$TopUpDetailPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpDetailPaymentImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpDetailPaymentImpl>
    implements _$$TopUpDetailPaymentImplCopyWith<$Res> {
  __$$TopUpDetailPaymentImplCopyWithImpl(_$TopUpDetailPaymentImpl _value,
      $Res Function(_$TopUpDetailPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpDetailPaymentImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpDetailPaymentImpl implements TopUpDetailPayment {
  const _$TopUpDetailPaymentImpl({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.detailPayment(data: $data)';
  }

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpDetailPaymentImplCopyWith<_$TopUpDetailPaymentImpl> get copyWith =>
      __$$TopUpDetailPaymentImplCopyWithImpl<_$TopUpDetailPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return detailPayment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailPayment != null) {
      return detailPayment(data);
    }
    return orElse();
  }
}

abstract class TopUpDetailPayment implements TopUpState {
  const factory TopUpDetailPayment({final PaymentModel? data}) =
      _$TopUpDetailPaymentImpl;

  PaymentModel? get data;

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpDetailPaymentImplCopyWith<_$TopUpDetailPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpErrorImplCopyWith<$Res> {
  factory _$$TopUpErrorImplCopyWith(
          _$TopUpErrorImpl value, $Res Function(_$TopUpErrorImpl) then) =
      __$$TopUpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$TopUpErrorImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpErrorImpl>
    implements _$$TopUpErrorImplCopyWith<$Res> {
  __$$TopUpErrorImplCopyWithImpl(
      _$TopUpErrorImpl _value, $Res Function(_$TopUpErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TopUpErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopUpErrorImpl implements TopUpError {
  const _$TopUpErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'TopUpState.error(error: $error)';
  }

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpErrorImplCopyWith<_$TopUpErrorImpl> get copyWith =>
      __$$TopUpErrorImplCopyWithImpl<_$TopUpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(PaymentModel? data)? success,
    TResult? Function(PaymentModel? data)? statusSuccess,
    TResult? Function(PaymentModel? data)? detailPayment,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(PaymentModel? data)? success,
    TResult Function(PaymentModel? data)? statusSuccess,
    TResult Function(PaymentModel? data)? detailPayment,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class TopUpError implements TopUpState {
  const factory TopUpError({final String? error}) = _$TopUpErrorImpl;

  String? get error;

  /// Create a copy of TopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpErrorImplCopyWith<_$TopUpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
