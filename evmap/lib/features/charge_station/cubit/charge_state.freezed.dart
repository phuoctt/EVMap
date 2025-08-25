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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChargeInitImplCopyWith<$Res> {
  factory _$$ChargeInitImplCopyWith(
          _$ChargeInitImpl value, $Res Function(_$ChargeInitImpl) then) =
      __$$ChargeInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeInitImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeInitImpl>
    implements _$$ChargeInitImplCopyWith<$Res> {
  __$$ChargeInitImplCopyWithImpl(
      _$ChargeInitImpl _value, $Res Function(_$ChargeInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeInitImpl implements ChargeInit {
  const _$ChargeInitImpl();

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
  const factory ChargeInit() = _$ChargeInitImpl;
}

/// @nodoc
abstract class _$$ChargeNothingImplCopyWith<$Res> {
  factory _$$ChargeNothingImplCopyWith(
          _$ChargeNothingImpl value, $Res Function(_$ChargeNothingImpl) then) =
      __$$ChargeNothingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeNothingImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeNothingImpl>
    implements _$$ChargeNothingImplCopyWith<$Res> {
  __$$ChargeNothingImplCopyWithImpl(
      _$ChargeNothingImpl _value, $Res Function(_$ChargeNothingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeNothingImpl implements ChargeNothing {
  const _$ChargeNothingImpl();

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
  const factory ChargeNothing() = _$ChargeNothingImpl;
}

/// @nodoc
abstract class _$$ChargeLoadingImplCopyWith<$Res> {
  factory _$$ChargeLoadingImplCopyWith(
          _$ChargeLoadingImpl value, $Res Function(_$ChargeLoadingImpl) then) =
      __$$ChargeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeLoadingImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeLoadingImpl>
    implements _$$ChargeLoadingImplCopyWith<$Res> {
  __$$ChargeLoadingImplCopyWithImpl(
      _$ChargeLoadingImpl _value, $Res Function(_$ChargeLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeLoadingImpl implements ChargeLoading {
  const _$ChargeLoadingImpl();

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
  const factory ChargeLoading() = _$ChargeLoadingImpl;
}

/// @nodoc
abstract class _$$ChargeLoadingScreenImplCopyWith<$Res> {
  factory _$$ChargeLoadingScreenImplCopyWith(_$ChargeLoadingScreenImpl value,
          $Res Function(_$ChargeLoadingScreenImpl) then) =
      __$$ChargeLoadingScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeLoadingScreenImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeLoadingScreenImpl>
    implements _$$ChargeLoadingScreenImplCopyWith<$Res> {
  __$$ChargeLoadingScreenImplCopyWithImpl(_$ChargeLoadingScreenImpl _value,
      $Res Function(_$ChargeLoadingScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeLoadingScreenImpl implements ChargeLoadingScreen {
  const _$ChargeLoadingScreenImpl();

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
  const factory ChargeLoadingScreen() = _$ChargeLoadingScreenImpl;
}

/// @nodoc
abstract class _$$ChargeStep1LoggedImplCopyWith<$Res> {
  factory _$$ChargeStep1LoggedImplCopyWith(_$ChargeStep1LoggedImpl value,
          $Res Function(_$ChargeStep1LoggedImpl) then) =
      __$$ChargeStep1LoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep1LoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep1LoggedImpl>
    implements _$$ChargeStep1LoggedImplCopyWith<$Res> {
  __$$ChargeStep1LoggedImplCopyWithImpl(_$ChargeStep1LoggedImpl _value,
      $Res Function(_$ChargeStep1LoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep1LoggedImpl(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep1LoggedImpl implements ChargeStep1Logged {
  const _$ChargeStep1LoggedImpl({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step1Logged(stepType: $stepType)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep1LoggedImplCopyWith<_$ChargeStep1LoggedImpl> get copyWith =>
      __$$ChargeStep1LoggedImplCopyWithImpl<_$ChargeStep1LoggedImpl>(
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
      _$ChargeStep1LoggedImpl;

  ChargeStepType get stepType;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStep1LoggedImplCopyWith<_$ChargeStep1LoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStep2LoggedImplCopyWith<$Res> {
  factory _$$ChargeStep2LoggedImplCopyWith(_$ChargeStep2LoggedImpl value,
          $Res Function(_$ChargeStep2LoggedImpl) then) =
      __$$ChargeStep2LoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep2LoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep2LoggedImpl>
    implements _$$ChargeStep2LoggedImplCopyWith<$Res> {
  __$$ChargeStep2LoggedImplCopyWithImpl(_$ChargeStep2LoggedImpl _value,
      $Res Function(_$ChargeStep2LoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep2LoggedImpl(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep2LoggedImpl implements ChargeStep2Logged {
  const _$ChargeStep2LoggedImpl({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step2Logged(stepType: $stepType)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep2LoggedImplCopyWith<_$ChargeStep2LoggedImpl> get copyWith =>
      __$$ChargeStep2LoggedImplCopyWithImpl<_$ChargeStep2LoggedImpl>(
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
      _$ChargeStep2LoggedImpl;

  ChargeStepType get stepType;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStep2LoggedImplCopyWith<_$ChargeStep2LoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStep3LoggedImplCopyWith<$Res> {
  factory _$$ChargeStep3LoggedImplCopyWith(_$ChargeStep3LoggedImpl value,
          $Res Function(_$ChargeStep3LoggedImpl) then) =
      __$$ChargeStep3LoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStepType stepType});
}

/// @nodoc
class __$$ChargeStep3LoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStep3LoggedImpl>
    implements _$$ChargeStep3LoggedImplCopyWith<$Res> {
  __$$ChargeStep3LoggedImplCopyWithImpl(_$ChargeStep3LoggedImpl _value,
      $Res Function(_$ChargeStep3LoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepType = null,
  }) {
    return _then(_$ChargeStep3LoggedImpl(
      stepType: null == stepType
          ? _value.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as ChargeStepType,
    ));
  }
}

/// @nodoc

class _$ChargeStep3LoggedImpl implements ChargeStep3Logged {
  const _$ChargeStep3LoggedImpl({required this.stepType});

  @override
  final ChargeStepType stepType;

  @override
  String toString() {
    return 'ChargeState.step3Logged(stepType: $stepType)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStep3LoggedImplCopyWith<_$ChargeStep3LoggedImpl> get copyWith =>
      __$$ChargeStep3LoggedImplCopyWithImpl<_$ChargeStep3LoggedImpl>(
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
      _$ChargeStep3LoggedImpl;

  ChargeStepType get stepType;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStep3LoggedImplCopyWith<_$ChargeStep3LoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeConnectorLoggedImplCopyWith<$Res> {
  factory _$$ChargeConnectorLoggedImplCopyWith(
          _$ChargeConnectorLoggedImpl value,
          $Res Function(_$ChargeConnectorLoggedImpl) then) =
      __$$ChargeConnectorLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeDataModel? data});
}

/// @nodoc
class __$$ChargeConnectorLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeConnectorLoggedImpl>
    implements _$$ChargeConnectorLoggedImplCopyWith<$Res> {
  __$$ChargeConnectorLoggedImplCopyWithImpl(_$ChargeConnectorLoggedImpl _value,
      $Res Function(_$ChargeConnectorLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeConnectorLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeDataModel?,
    ));
  }
}

/// @nodoc

class _$ChargeConnectorLoggedImpl implements ChargeConnectorLogged {
  const _$ChargeConnectorLoggedImpl({this.data});

  @override
  final ChargeDataModel? data;

  @override
  String toString() {
    return 'ChargeState.chargeConnectorLogged(data: $data)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeConnectorLoggedImplCopyWith<_$ChargeConnectorLoggedImpl>
      get copyWith => __$$ChargeConnectorLoggedImplCopyWithImpl<
          _$ChargeConnectorLoggedImpl>(this, _$identity);

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
      _$ChargeConnectorLoggedImpl;

  ChargeDataModel? get data;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeConnectorLoggedImplCopyWith<_$ChargeConnectorLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartChargeLoggedImplCopyWith<$Res> {
  factory _$$StartChargeLoggedImplCopyWith(_$StartChargeLoggedImpl value,
          $Res Function(_$StartChargeLoggedImpl) then) =
      __$$StartChargeLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel? data});
}

/// @nodoc
class __$$StartChargeLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$StartChargeLoggedImpl>
    implements _$$StartChargeLoggedImplCopyWith<$Res> {
  __$$StartChargeLoggedImplCopyWithImpl(_$StartChargeLoggedImpl _value,
      $Res Function(_$StartChargeLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StartChargeLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ));
  }
}

/// @nodoc

class _$StartChargeLoggedImpl implements StartChargeLogged {
  const _$StartChargeLoggedImpl({this.data});

  @override
  final TransactionModel? data;

  @override
  String toString() {
    return 'ChargeState.startChargeLogged(data: $data)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartChargeLoggedImplCopyWith<_$StartChargeLoggedImpl> get copyWith =>
      __$$StartChargeLoggedImplCopyWithImpl<_$StartChargeLoggedImpl>(
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
      _$StartChargeLoggedImpl;

  TransactionModel? get data;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartChargeLoggedImplCopyWith<_$StartChargeLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargingLoggedImplCopyWith<$Res> {
  factory _$$ChargingLoggedImplCopyWith(_$ChargingLoggedImpl value,
          $Res Function(_$ChargingLoggedImpl) then) =
      __$$ChargingLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeDataModel? data, ChargeStatusType? chargeStatusType});
}

/// @nodoc
class __$$ChargingLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargingLoggedImpl>
    implements _$$ChargingLoggedImplCopyWith<$Res> {
  __$$ChargingLoggedImplCopyWithImpl(
      _$ChargingLoggedImpl _value, $Res Function(_$ChargingLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? chargeStatusType = freezed,
  }) {
    return _then(_$ChargingLoggedImpl(
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

class _$ChargingLoggedImpl implements ChargingLogged {
  const _$ChargingLoggedImpl({this.data, this.chargeStatusType});

  @override
  final ChargeDataModel? data;
  @override
  final ChargeStatusType? chargeStatusType;

  @override
  String toString() {
    return 'ChargeState.chargingLogged(data: $data, chargeStatusType: $chargeStatusType)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargingLoggedImplCopyWith<_$ChargingLoggedImpl> get copyWith =>
      __$$ChargingLoggedImplCopyWithImpl<_$ChargingLoggedImpl>(
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
      final ChargeStatusType? chargeStatusType}) = _$ChargingLoggedImpl;

  ChargeDataModel? get data;
  ChargeStatusType? get chargeStatusType;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargingLoggedImplCopyWith<_$ChargingLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStopImplCopyWith<$Res> {
  factory _$$ChargeStopImplCopyWith(
          _$ChargeStopImpl value, $Res Function(_$ChargeStopImpl) then) =
      __$$ChargeStopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num? transactionId});
}

/// @nodoc
class __$$ChargeStopImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeStopImpl>
    implements _$$ChargeStopImplCopyWith<$Res> {
  __$$ChargeStopImplCopyWithImpl(
      _$ChargeStopImpl _value, $Res Function(_$ChargeStopImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_$ChargeStopImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$ChargeStopImpl implements ChargeStop {
  const _$ChargeStopImpl({this.transactionId});

  @override
  final num? transactionId;

  @override
  String toString() {
    return 'ChargeState.stopCharge(transactionId: $transactionId)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStopImplCopyWith<_$ChargeStopImpl> get copyWith =>
      __$$ChargeStopImplCopyWithImpl<_$ChargeStopImpl>(this, _$identity);

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
  const factory ChargeStop({final num? transactionId}) = _$ChargeStopImpl;

  num? get transactionId;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStopImplCopyWith<_$ChargeStopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeErrorImplCopyWith<$Res> {
  factory _$$ChargeErrorImplCopyWith(
          _$ChargeErrorImpl value, $Res Function(_$ChargeErrorImpl) then) =
      __$$ChargeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ChargeErrorImplCopyWithImpl<$Res>
    extends _$ChargeStateCopyWithImpl<$Res, _$ChargeErrorImpl>
    implements _$$ChargeErrorImplCopyWith<$Res> {
  __$$ChargeErrorImplCopyWithImpl(
      _$ChargeErrorImpl _value, $Res Function(_$ChargeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChargeErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChargeErrorImpl implements ChargeError {
  const _$ChargeErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ChargeState.error(error: $error)';
  }

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeErrorImplCopyWith<_$ChargeErrorImpl> get copyWith =>
      __$$ChargeErrorImplCopyWithImpl<_$ChargeErrorImpl>(this, _$identity);

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
  const factory ChargeError({final String? error}) = _$ChargeErrorImpl;

  String? get error;

  /// Create a copy of ChargeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeErrorImplCopyWith<_$ChargeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
