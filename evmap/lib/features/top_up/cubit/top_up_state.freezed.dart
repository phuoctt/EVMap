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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$TopUpLoadingCopyWith<$Res> {
  factory _$$TopUpLoadingCopyWith(
          _$TopUpLoading value, $Res Function(_$TopUpLoading) then) =
      __$$TopUpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopUpLoadingCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpLoading>
    implements _$$TopUpLoadingCopyWith<$Res> {
  __$$TopUpLoadingCopyWithImpl(
      _$TopUpLoading _value, $Res Function(_$TopUpLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopUpLoading implements TopUpLoading {
  const _$TopUpLoading();

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
  const factory TopUpLoading() = _$TopUpLoading;
}

/// @nodoc
abstract class _$$TopUpLoadingScreenCopyWith<$Res> {
  factory _$$TopUpLoadingScreenCopyWith(_$TopUpLoadingScreen value,
          $Res Function(_$TopUpLoadingScreen) then) =
      __$$TopUpLoadingScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopUpLoadingScreenCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpLoadingScreen>
    implements _$$TopUpLoadingScreenCopyWith<$Res> {
  __$$TopUpLoadingScreenCopyWithImpl(
      _$TopUpLoadingScreen _value, $Res Function(_$TopUpLoadingScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopUpLoadingScreen implements TopUpLoadingScreen {
  const _$TopUpLoadingScreen();

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
  const factory TopUpLoadingScreen() = _$TopUpLoadingScreen;
}

/// @nodoc
abstract class _$$TopUpSuccessCopyWith<$Res> {
  factory _$$TopUpSuccessCopyWith(
          _$TopUpSuccess value, $Res Function(_$TopUpSuccess) then) =
      __$$TopUpSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpSuccessCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpSuccess>
    implements _$$TopUpSuccessCopyWith<$Res> {
  __$$TopUpSuccessCopyWithImpl(
      _$TopUpSuccess _value, $Res Function(_$TopUpSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpSuccess(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpSuccess implements TopUpSuccess {
  const _$TopUpSuccess({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.success(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpSuccessCopyWith<_$TopUpSuccess> get copyWith =>
      __$$TopUpSuccessCopyWithImpl<_$TopUpSuccess>(this, _$identity);

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
  const factory TopUpSuccess({final PaymentModel? data}) = _$TopUpSuccess;

  PaymentModel? get data;
  @JsonKey(ignore: true)
  _$$TopUpSuccessCopyWith<_$TopUpSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpStatusSuccessCopyWith<$Res> {
  factory _$$TopUpStatusSuccessCopyWith(_$TopUpStatusSuccess value,
          $Res Function(_$TopUpStatusSuccess) then) =
      __$$TopUpStatusSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpStatusSuccessCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpStatusSuccess>
    implements _$$TopUpStatusSuccessCopyWith<$Res> {
  __$$TopUpStatusSuccessCopyWithImpl(
      _$TopUpStatusSuccess _value, $Res Function(_$TopUpStatusSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpStatusSuccess(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpStatusSuccess implements TopUpStatusSuccess {
  const _$TopUpStatusSuccess({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.statusSuccess(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpStatusSuccessCopyWith<_$TopUpStatusSuccess> get copyWith =>
      __$$TopUpStatusSuccessCopyWithImpl<_$TopUpStatusSuccess>(
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
      _$TopUpStatusSuccess;

  PaymentModel? get data;
  @JsonKey(ignore: true)
  _$$TopUpStatusSuccessCopyWith<_$TopUpStatusSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpDetailPaymentCopyWith<$Res> {
  factory _$$TopUpDetailPaymentCopyWith(_$TopUpDetailPayment value,
          $Res Function(_$TopUpDetailPayment) then) =
      __$$TopUpDetailPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel? data});
}

/// @nodoc
class __$$TopUpDetailPaymentCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpDetailPayment>
    implements _$$TopUpDetailPaymentCopyWith<$Res> {
  __$$TopUpDetailPaymentCopyWithImpl(
      _$TopUpDetailPayment _value, $Res Function(_$TopUpDetailPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopUpDetailPayment(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
    ));
  }
}

/// @nodoc

class _$TopUpDetailPayment implements TopUpDetailPayment {
  const _$TopUpDetailPayment({this.data});

  @override
  final PaymentModel? data;

  @override
  String toString() {
    return 'TopUpState.detailPayment(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpDetailPaymentCopyWith<_$TopUpDetailPayment> get copyWith =>
      __$$TopUpDetailPaymentCopyWithImpl<_$TopUpDetailPayment>(
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
      _$TopUpDetailPayment;

  PaymentModel? get data;
  @JsonKey(ignore: true)
  _$$TopUpDetailPaymentCopyWith<_$TopUpDetailPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUpErrorCopyWith<$Res> {
  factory _$$TopUpErrorCopyWith(
          _$TopUpError value, $Res Function(_$TopUpError) then) =
      __$$TopUpErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$TopUpErrorCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpError>
    implements _$$TopUpErrorCopyWith<$Res> {
  __$$TopUpErrorCopyWithImpl(
      _$TopUpError _value, $Res Function(_$TopUpError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TopUpError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopUpError implements TopUpError {
  const _$TopUpError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'TopUpState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpErrorCopyWith<_$TopUpError> get copyWith =>
      __$$TopUpErrorCopyWithImpl<_$TopUpError>(this, _$identity);

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
  const factory TopUpError({final String? error}) = _$TopUpError;

  String? get error;
  @JsonKey(ignore: true)
  _$$TopUpErrorCopyWith<_$TopUpError> get copyWith =>
      throw _privateConstructorUsedError;
}
