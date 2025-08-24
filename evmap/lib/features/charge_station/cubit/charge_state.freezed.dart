// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChargeState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeStateCopyWith<$Res> {
  factory $ChargeStateCopyWith(
          ChargeState value, $Res Function(ChargeState) then) =
      _$ChargeStateCopyWithImpl<$Res, ChargeState>;
}

/// @nodoc
class _$ChargeStateCopyWithImpl<$Res, $Val extends ChargeState>
    implements $ChargeStateCopyWith<$Res> {
  _$ChargeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChargeInitCopyWith<$Res> {
  factory _$$ChargeInitCopyWith(
          _$ChargeInit value, $Res Function(_$ChargeInit) then) =
      __$$ChargeInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeInitCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeInit>
    implements _$$ChargeInitCopyWith<$Res> {
  __$$ChargeInitCopyWithImpl(
      _$ChargeInit _value, $Res Function(_$ChargeInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeInit implements ChargeInit {
  const _$ChargeInit();

  @override
  String toString() {
    return 'ChargeState.init()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }
}

abstract class ChargeInit implements ChargeState {
  const factory ChargeInit() = _$ChargeInit;
}

/// @nodoc
abstract class _$$ChargeNothingCopyWith<$Res> {
  factory _$$ChargeNothingCopyWith(
          _$ChargeNothing value, $Res Function(_$ChargeNothing) then) =
      __$$ChargeNothingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeNothingCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeNothing>
    implements _$$ChargeNothingCopyWith<$Res> {
  __$$ChargeNothingCopyWithImpl(
      _$ChargeNothing _value, $Res Function(_$ChargeNothing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeNothing implements ChargeNothing {
  const _$ChargeNothing();

  @override
  String toString() {
    return 'ChargeState.nothing()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return nothing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }
}

abstract class ChargeNothing implements ChargeState {
  const factory ChargeNothing() = _$ChargeNothing;
}

/// @nodoc
abstract class _$$ChargeLoadingCopyWith<$Res> {
  factory _$$ChargeLoadingCopyWith(
          _$ChargeLoading value, $Res Function(_$ChargeLoading) then) =
      __$$ChargeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeLoadingCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeLoading>
    implements _$$ChargeLoadingCopyWith<$Res> {
  __$$ChargeLoadingCopyWithImpl(
      _$ChargeLoading _value, $Res Function(_$ChargeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeLoading implements ChargeLoading {
  const _$ChargeLoading();

  @override
  String toString() {
    return 'ChargeState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class ChargeLoading implements ChargeState {
  const factory ChargeLoading() = _$ChargeLoading;
}

/// @nodoc
abstract class _$$ChargeLoadingScreenCopyWith<$Res> {
  factory _$$ChargeLoadingScreenCopyWith(_$ChargeLoadingScreen value,
          $Res Function(_$ChargeLoadingScreen) then) =
      __$$ChargeLoadingScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeLoadingScreenCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeLoadingScreen>
    implements _$$ChargeLoadingScreenCopyWith<$Res> {
  __$$ChargeLoadingScreenCopyWithImpl(
      _$ChargeLoadingScreen _value, $Res Function(_$ChargeLoadingScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeLoadingScreen implements ChargeLoadingScreen {
  const _$ChargeLoadingScreen();

  @override
  String toString() {
    return 'ChargeState.loadingScreen()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return loadingScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadingScreen != null) {
      return loadingScreen();
    }
    return orElse();
  }
}

abstract class ChargeLoadingScreen implements ChargeState {
  const factory ChargeLoadingScreen() = _$ChargeLoadingScreen;
}

/// @nodoc
abstract class _$$ChargeStep1LoggedCopyWith<$Res> {
  factory _$$ChargeStep1LoggedCopyWith(
          _$ChargeStep1Logged value, $Res Function(_$ChargeStep1Logged) then) =
      __$$ChargeStep1LoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep1LoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep1Logged>
    implements _$$ChargeStep1LoggedCopyWith<$Res> {
  __$$ChargeStep1LoggedCopyWithImpl(
      _$ChargeStep1Logged _value, $Res Function(_$ChargeStep1Logged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep1Logged(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep1Logged implements ChargeStep1Logged {
  const _$ChargeStep1Logged({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step1Logged(stepType: $stepType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep1LoggedCopyWith<_$ChargeStep1Logged> get copyWith =>
      __$$ChargeStep1LoggedCopyWithImpl<_$ChargeStep1Logged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return step1Logged?.call(stepType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (step1Logged != null) {
      return step1Logged(stepType);
    }
    return orElse();
  }
}

abstract class ChargeStep1Logged implements ChargeState {
  const factory ChargeStep1Logged({required final ChargeStepType stepType}) =
      _$ChargeStep1Logged;

  ChargeStepType get stepType;
  @JsonKey(ignore: true)
  _$$ChargeStep1LoggedCopyWith<_$ChargeStep1Logged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStep2LoggedCopyWith<$Res> {
  factory _$$ChargeStep2LoggedCopyWith(
          _$ChargeStep2Logged value, $Res Function(_$ChargeStep2Logged) then) =
      __$$ChargeStep2LoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep2LoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep2Logged>
    implements _$$ChargeStep2LoggedCopyWith<$Res> {
  __$$ChargeStep2LoggedCopyWithImpl(
      _$ChargeStep2Logged _value, $Res Function(_$ChargeStep2Logged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep2Logged(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep2Logged implements ChargeStep2Logged {
  const _$ChargeStep2Logged({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step2Logged(stepType: $stepType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep2LoggedCopyWith<_$ChargeStep2Logged> get copyWith =>
      __$$ChargeStep2LoggedCopyWithImpl<_$ChargeStep2Logged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return step2Logged?.call(stepType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (step2Logged != null) {
      return step2Logged(stepType);
    }
    return orElse();
  }
}

abstract class ChargeStep2Logged implements ChargeState {
  const factory ChargeStep2Logged({required final ChargeStepType stepType}) =
      _$ChargeStep2Logged;

  ChargeStepType get stepType;
  @JsonKey(ignore: true)
  _$$ChargeStep2LoggedCopyWith<_$ChargeStep2Logged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStep3LoggedCopyWith<$Res> {
  factory _$$ChargeStep3LoggedCopyWith(
          _$ChargeStep3Logged value, $Res Function(_$ChargeStep3Logged) then) =
      __$$ChargeStep3LoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep3LoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep3Logged>
    implements _$$ChargeStep3LoggedCopyWith<$Res> {
  __$$ChargeStep3LoggedCopyWithImpl(
      _$ChargeStep3Logged _value, $Res Function(_$ChargeStep3Logged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep3Logged(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep3Logged implements ChargeStep3Logged {
  const _$ChargeStep3Logged({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step3Logged(stepType: $stepType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep3LoggedCopyWith<_$ChargeStep3Logged> get copyWith =>
      __$$ChargeStep3LoggedCopyWithImpl<_$ChargeStep3Logged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return step3Logged?.call(stepType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (step3Logged != null) {
      return step3Logged(stepType);
    }
    return orElse();
  }
}

abstract class ChargeStep3Logged implements ChargeState {
  const factory ChargeStep3Logged({required final ChargeStepType stepType}) =
      _$ChargeStep3Logged;

  ChargeStepType get stepType;
  @JsonKey(ignore: true)
  _$$ChargeStep3LoggedCopyWith<_$ChargeStep3Logged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeConnectorLoggedCopyWith<$Res> {
  factory _$$ChargeConnectorLoggedCopyWith(_$ChargeConnectorLogged value,
          $Res Function(_$ChargeConnectorLogged) then) =
      __$$ChargeConnectorLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeDataModel? data});
}

/// @nodoc
class __$$ChargeConnectorLoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeConnectorLogged>
    implements _$$ChargeConnectorLoggedCopyWith<$Res> {
  __$$ChargeConnectorLoggedCopyWithImpl(_$ChargeConnectorLogged _value,
      $Res Function(_$ChargeConnectorLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeConnectorLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeDataModel?,
    ));
  }
}

/// @nodoc

class _$ChargeConnectorLogged implements ChargeConnectorLogged {
  const _$ChargeConnectorLogged({this.data});

  @override
  final ChargeDataModel? data;

  @override
  String toString() {
    return 'ChargeState.chargeConnectorLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeConnectorLoggedCopyWith<_$ChargeConnectorLogged> get copyWith =>
      __$$ChargeConnectorLoggedCopyWithImpl<_$ChargeConnectorLogged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return chargeConnectorLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (chargeConnectorLogged != null) {
      return chargeConnectorLogged(data);
    }
    return orElse();
  }
}

abstract class ChargeConnectorLogged implements ChargeState {
  const factory ChargeConnectorLogged({final ChargeDataModel? data}) =
      _$ChargeConnectorLogged;

  ChargeDataModel? get data;
  @JsonKey(ignore: true)
  _$$ChargeConnectorLoggedCopyWith<_$ChargeConnectorLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartChargeLoggedCopyWith<$Res> {
  factory _$$StartChargeLoggedCopyWith(
          _$StartChargeLogged value, $Res Function(_$StartChargeLogged) then) =
      __$$StartChargeLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel? data});
}

/// @nodoc
class __$$StartChargeLoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$StartChargeLogged>
    implements _$$StartChargeLoggedCopyWith<$Res> {
  __$$StartChargeLoggedCopyWithImpl(
      _$StartChargeLogged _value, $Res Function(_$StartChargeLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StartChargeLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ));
  }
}

/// @nodoc

class _$StartChargeLogged implements StartChargeLogged {
  const _$StartChargeLogged({this.data});

  @override
  final TransactionModel? data;

  @override
  String toString() {
    return 'ChargeState.startChargeLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartChargeLoggedCopyWith<_$StartChargeLogged> get copyWith =>
      __$$StartChargeLoggedCopyWithImpl<_$StartChargeLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return startChargeLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (startChargeLogged != null) {
      return startChargeLogged(data);
    }
    return orElse();
  }
}

abstract class StartChargeLogged implements ChargeState {
  const factory StartChargeLogged({final TransactionModel? data}) =
      _$StartChargeLogged;

  TransactionModel? get data;
  @JsonKey(ignore: true)
  _$$StartChargeLoggedCopyWith<_$StartChargeLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargingLoggedCopyWith<$Res> {
  factory _$$ChargingLoggedCopyWith(
          _$ChargingLogged value, $Res Function(_$ChargingLogged) then) =
      __$$ChargingLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeDataModel? data, ChargeStatusType? chargeStatusType});
}

/// @nodoc
class __$$ChargingLoggedCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargingLogged>
    implements _$$ChargingLoggedCopyWith<$Res> {
  __$$ChargingLoggedCopyWithImpl(
      _$ChargingLogged _value, $Res Function(_$ChargingLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? chargeStatusType = freezed,
  }) {
    return _then(_$ChargingLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeDataModel?,
      chargeStatusType: freezed == chargeStatusType
          ? _value.chargeStatusType
          : chargeStatusType // ignore: cast_nullable_to_non_nullable
              as ChargeStatusType?,
    ));
  }
}

/// @nodoc

class _$ChargingLogged implements ChargingLogged {
  const _$ChargingLogged({this.data, this.chargeStatusType});

  @override
  final ChargeDataModel? data;
  @override
  final ChargeStatusType? chargeStatusType;

  @override
  String toString() {
    return 'ChargeState.chargingLogged(data: $data, chargeStatusType: $chargeStatusType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargingLoggedCopyWith<_$ChargingLogged> get copyWith =>
      __$$ChargingLoggedCopyWithImpl<_$ChargingLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return chargingLogged?.call(data, chargeStatusType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (chargingLogged != null) {
      return chargingLogged(data, chargeStatusType);
    }
    return orElse();
  }
}

abstract class ChargingLogged implements ChargeState {
  const factory ChargingLogged(
      {final ChargeDataModel? data,
      final ChargeStatusType? chargeStatusType}) = _$ChargingLogged;

  ChargeDataModel? get data;
  ChargeStatusType? get chargeStatusType;
  @JsonKey(ignore: true)
  _$$ChargingLoggedCopyWith<_$ChargingLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStopCopyWith<$Res> {
  factory _$$ChargeStopCopyWith(
          _$ChargeStop value, $Res Function(_$ChargeStop) then) =
      __$$ChargeStopCopyWithImpl<$Res>;
  @useResult
  $Res call({num? transactionId});
}

/// @nodoc
class __$$ChargeStopCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStop>
    implements _$$ChargeStopCopyWith<$Res> {
  __$$ChargeStopCopyWithImpl(
      _$ChargeStop _value, $Res Function(_$ChargeStop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_$ChargeStop(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$ChargeStop implements ChargeStop {
  const _$ChargeStop({this.transactionId});

  @override
  final num? transactionId;

  @override
  String toString() {
    return 'ChargeState.stopCharge(transactionId: $transactionId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStopCopyWith<_$ChargeStop> get copyWith =>
      __$$ChargeStopCopyWithImpl<_$ChargeStop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return stopCharge?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (stopCharge != null) {
      return stopCharge(transactionId);
    }
    return orElse();
  }
}

abstract class ChargeStop implements ChargeState {
  const factory ChargeStop({final num? transactionId}) = _$ChargeStop;

  num? get transactionId;
  @JsonKey(ignore: true)
  _$$ChargeStopCopyWith<_$ChargeStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeErrorCopyWith<$Res> {
  factory _$$ChargeErrorCopyWith(
          _$ChargeError value, $Res Function(_$ChargeError) then) =
      __$$ChargeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ChargeErrorCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeError>
    implements _$$ChargeErrorCopyWith<$Res> {
  __$$ChargeErrorCopyWithImpl(
      _$ChargeError _value, $Res Function(_$ChargeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChargeError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChargeError implements ChargeError {
  const _$ChargeError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ChargeState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeErrorCopyWith<_$ChargeError> get copyWith =>
      __$$ChargeErrorCopyWithImpl<_$ChargeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? nothing,
    TResult? Function()? loading,
    TResult? Function()? loadingScreen,
    TResult? Function(ChargeStepType stepType)? step1Logged,
    TResult? Function(ChargeStepType stepType)? step2Logged,
    TResult? Function(ChargeStepType stepType)? step3Logged,
    TResult? Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult? Function(TransactionModel? data)? startChargeLogged,
    TResult? Function(
            ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult? Function(num? transactionId)? stopCharge,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nothing,
    TResult Function()? loading,
    TResult Function()? loadingScreen,
    TResult Function(ChargeStepType stepType)? step1Logged,
    TResult Function(ChargeStepType stepType)? step2Logged,
    TResult Function(ChargeStepType stepType)? step3Logged,
    TResult Function(ChargeDataModel? data)? chargeConnectorLogged,
    TResult Function(TransactionModel? data)? startChargeLogged,
    TResult Function(ChargeDataModel? data, ChargeStatusType? chargeStatusType)?
        chargingLogged,
    TResult Function(num? transactionId)? stopCharge,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class ChargeError implements ChargeState {
  const factory ChargeError({final String? error}) = _$ChargeError;

  String? get error;
  @JsonKey(ignore: true)
  _$$ChargeErrorCopyWith<_$ChargeError> get copyWith =>
      throw _privateConstructorUsedError;
}
