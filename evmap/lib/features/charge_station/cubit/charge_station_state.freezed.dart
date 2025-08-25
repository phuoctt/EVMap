// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_station_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChargeStationState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeStationStateCopyWith<$Res> {
  factory $ChargeStationStateCopyWith(
          ChargeStationState value, $Res Function(ChargeStationState) then) =
      _$ChargeStationStateCopyWithImpl<$Res, ChargeStationState>;
}

/// @nodoc
class _$ChargeStationStateCopyWithImpl<$Res, $Val extends ChargeStationState>
    implements $ChargeStationStateCopyWith<$Res> {
  _$ChargeStationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChargeStationLoadingImplCopyWith<$Res> {
  factory _$$ChargeStationLoadingImplCopyWith(_$ChargeStationLoadingImpl value,
          $Res Function(_$ChargeStationLoadingImpl) then) =
      __$$ChargeStationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationLoadingImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationLoadingImpl>
    implements _$$ChargeStationLoadingImplCopyWith<$Res> {
  __$$ChargeStationLoadingImplCopyWithImpl(_$ChargeStationLoadingImpl _value,
      $Res Function(_$ChargeStationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeStationLoadingImpl implements ChargeStationLoading {
  const _$ChargeStationLoadingImpl();

  @override
  String toString() {
    return 'ChargeStationState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class ChargeStationLoading implements ChargeStationState {
  const factory ChargeStationLoading() = _$ChargeStationLoadingImpl;
}

/// @nodoc
abstract class _$$ChargeStationScreenLoadingImplCopyWith<$Res> {
  factory _$$ChargeStationScreenLoadingImplCopyWith(
          _$ChargeStationScreenLoadingImpl value,
          $Res Function(_$ChargeStationScreenLoadingImpl) then) =
      __$$ChargeStationScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationScreenLoadingImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationScreenLoadingImpl>
    implements _$$ChargeStationScreenLoadingImplCopyWith<$Res> {
  __$$ChargeStationScreenLoadingImplCopyWithImpl(
      _$ChargeStationScreenLoadingImpl _value,
      $Res Function(_$ChargeStationScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeStationScreenLoadingImpl implements ChargeStationScreenLoading {
  const _$ChargeStationScreenLoadingImpl();

  @override
  String toString() {
    return 'ChargeStationState.screenLoading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return screenLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (screenLoading != null) {
      return screenLoading();
    }
    return orElse();
  }
}

abstract class ChargeStationScreenLoading implements ChargeStationState {
  const factory ChargeStationScreenLoading() = _$ChargeStationScreenLoadingImpl;
}

/// @nodoc
abstract class _$$ChargeStationScanQrSuccessImplCopyWith<$Res> {
  factory _$$ChargeStationScanQrSuccessImplCopyWith(
          _$ChargeStationScanQrSuccessImpl value,
          $Res Function(_$ChargeStationScanQrSuccessImpl) then) =
      __$$ChargeStationScanQrSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorsModel? data});
}

/// @nodoc
class __$$ChargeStationScanQrSuccessImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationScanQrSuccessImpl>
    implements _$$ChargeStationScanQrSuccessImplCopyWith<$Res> {
  __$$ChargeStationScanQrSuccessImplCopyWithImpl(
      _$ChargeStationScanQrSuccessImpl _value,
      $Res Function(_$ChargeStationScanQrSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeStationScanQrSuccessImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectorsModel?,
    ));
  }
}

/// @nodoc

class _$ChargeStationScanQrSuccessImpl implements ChargeStationScanQrSuccess {
  const _$ChargeStationScanQrSuccessImpl({this.data});

  @override
  final ConnectorsModel? data;

  @override
  String toString() {
    return 'ChargeStationState.scanQrSuccess(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationScanQrSuccessImplCopyWith<_$ChargeStationScanQrSuccessImpl>
      get copyWith => __$$ChargeStationScanQrSuccessImplCopyWithImpl<
          _$ChargeStationScanQrSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return scanQrSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (scanQrSuccess != null) {
      return scanQrSuccess(data);
    }
    return orElse();
  }
}

abstract class ChargeStationScanQrSuccess implements ChargeStationState {
  const factory ChargeStationScanQrSuccess({final ConnectorsModel? data}) =
      _$ChargeStationScanQrSuccessImpl;

  ConnectorsModel? get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationScanQrSuccessImplCopyWith<_$ChargeStationScanQrSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationNothingImplCopyWith<$Res> {
  factory _$$ChargeStationNothingImplCopyWith(_$ChargeStationNothingImpl value,
          $Res Function(_$ChargeStationNothingImpl) then) =
      __$$ChargeStationNothingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationNothingImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationNothingImpl>
    implements _$$ChargeStationNothingImplCopyWith<$Res> {
  __$$ChargeStationNothingImplCopyWithImpl(_$ChargeStationNothingImpl _value,
      $Res Function(_$ChargeStationNothingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChargeStationNothingImpl implements ChargeStationNothing {
  const _$ChargeStationNothingImpl();

  @override
  String toString() {
    return 'ChargeStationState.nothing()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return nothing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }
}

abstract class ChargeStationNothing implements ChargeStationState {
  const factory ChargeStationNothing() = _$ChargeStationNothingImpl;
}

/// @nodoc
abstract class _$$ChargeStationLoggedImplCopyWith<$Res> {
  factory _$$ChargeStationLoggedImplCopyWith(_$ChargeStationLoggedImpl value,
          $Res Function(_$ChargeStationLoggedImpl) then) =
      __$$ChargeStationLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeStationModel> data, bool? isFinish});
}

/// @nodoc
class __$$ChargeStationLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationLoggedImpl>
    implements _$$ChargeStationLoggedImplCopyWith<$Res> {
  __$$ChargeStationLoggedImplCopyWithImpl(_$ChargeStationLoggedImpl _value,
      $Res Function(_$ChargeStationLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isFinish = freezed,
  }) {
    return _then(_$ChargeStationLoggedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeStationModel>,
      isFinish: freezed == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChargeStationLoggedImpl implements ChargeStationLogged {
  const _$ChargeStationLoggedImpl(
      {required final List<ChargeStationModel> data, this.isFinish})
      : _data = data;

  final List<ChargeStationModel> _data;
  @override
  List<ChargeStationModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool? isFinish;

  @override
  String toString() {
    return 'ChargeStationState.logged(data: $data, isFinish: $isFinish)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationLoggedImplCopyWith<_$ChargeStationLoggedImpl> get copyWith =>
      __$$ChargeStationLoggedImplCopyWithImpl<_$ChargeStationLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return logged?.call(data, isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(data, isFinish);
    }
    return orElse();
  }
}

abstract class ChargeStationLogged implements ChargeStationState {
  const factory ChargeStationLogged(
      {required final List<ChargeStationModel> data,
      final bool? isFinish}) = _$ChargeStationLoggedImpl;

  List<ChargeStationModel> get data;
  bool? get isFinish;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationLoggedImplCopyWith<_$ChargeStationLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationSearchHistoryLoggedImplCopyWith<$Res> {
  factory _$$ChargeStationSearchHistoryLoggedImplCopyWith(
          _$ChargeStationSearchHistoryLoggedImpl value,
          $Res Function(_$ChargeStationSearchHistoryLoggedImpl) then) =
      __$$ChargeStationSearchHistoryLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeStationModel> data});
}

/// @nodoc
class __$$ChargeStationSearchHistoryLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationSearchHistoryLoggedImpl>
    implements _$$ChargeStationSearchHistoryLoggedImplCopyWith<$Res> {
  __$$ChargeStationSearchHistoryLoggedImplCopyWithImpl(
      _$ChargeStationSearchHistoryLoggedImpl _value,
      $Res Function(_$ChargeStationSearchHistoryLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeStationSearchHistoryLoggedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeStationModel>,
    ));
  }
}

/// @nodoc

class _$ChargeStationSearchHistoryLoggedImpl
    implements ChargeStationSearchHistoryLogged {
  const _$ChargeStationSearchHistoryLoggedImpl(
      {required final List<ChargeStationModel> data})
      : _data = data;

  final List<ChargeStationModel> _data;
  @override
  List<ChargeStationModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChargeStationState.searchHistoryLogged(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationSearchHistoryLoggedImplCopyWith<
          _$ChargeStationSearchHistoryLoggedImpl>
      get copyWith => __$$ChargeStationSearchHistoryLoggedImplCopyWithImpl<
          _$ChargeStationSearchHistoryLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return searchHistoryLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (searchHistoryLogged != null) {
      return searchHistoryLogged(data);
    }
    return orElse();
  }
}

abstract class ChargeStationSearchHistoryLogged implements ChargeStationState {
  const factory ChargeStationSearchHistoryLogged(
          {required final List<ChargeStationModel> data}) =
      _$ChargeStationSearchHistoryLoggedImpl;

  List<ChargeStationModel> get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationSearchHistoryLoggedImplCopyWith<
          _$ChargeStationSearchHistoryLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationMapLoggedImplCopyWith<$Res> {
  factory _$$ChargeStationMapLoggedImplCopyWith(
          _$ChargeStationMapLoggedImpl value,
          $Res Function(_$ChargeStationMapLoggedImpl) then) =
      __$$ChargeStationMapLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RouteDirectionModel data});
}

/// @nodoc
class __$$ChargeStationMapLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationMapLoggedImpl>
    implements _$$ChargeStationMapLoggedImplCopyWith<$Res> {
  __$$ChargeStationMapLoggedImplCopyWithImpl(
      _$ChargeStationMapLoggedImpl _value,
      $Res Function(_$ChargeStationMapLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeStationMapLoggedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RouteDirectionModel,
    ));
  }
}

/// @nodoc

class _$ChargeStationMapLoggedImpl implements ChargeStationMapLogged {
  const _$ChargeStationMapLoggedImpl({required this.data});

  @override
  final RouteDirectionModel data;

  @override
  String toString() {
    return 'ChargeStationState.mapLogged(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationMapLoggedImplCopyWith<_$ChargeStationMapLoggedImpl>
      get copyWith => __$$ChargeStationMapLoggedImplCopyWithImpl<
          _$ChargeStationMapLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return mapLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (mapLogged != null) {
      return mapLogged(data);
    }
    return orElse();
  }
}

abstract class ChargeStationMapLogged implements ChargeStationState {
  const factory ChargeStationMapLogged(
      {required final RouteDirectionModel data}) = _$ChargeStationMapLoggedImpl;

  RouteDirectionModel get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationMapLoggedImplCopyWith<_$ChargeStationMapLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeBoxInAppLoggedImplCopyWith<$Res> {
  factory _$$ChargeBoxInAppLoggedImplCopyWith(_$ChargeBoxInAppLoggedImpl value,
          $Res Function(_$ChargeBoxInAppLoggedImpl) then) =
      __$$ChargeBoxInAppLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxDataModel? data});
}

/// @nodoc
class __$$ChargeBoxInAppLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeBoxInAppLoggedImpl>
    implements _$$ChargeBoxInAppLoggedImplCopyWith<$Res> {
  __$$ChargeBoxInAppLoggedImplCopyWithImpl(_$ChargeBoxInAppLoggedImpl _value,
      $Res Function(_$ChargeBoxInAppLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeBoxInAppLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxDataModel?,
    ));
  }
}

/// @nodoc

class _$ChargeBoxInAppLoggedImpl implements ChargeBoxInAppLogged {
  const _$ChargeBoxInAppLoggedImpl({this.data});

  @override
  final ChargeBoxDataModel? data;

  @override
  String toString() {
    return 'ChargeStationState.chargeBoxInAppLogged(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeBoxInAppLoggedImplCopyWith<_$ChargeBoxInAppLoggedImpl>
      get copyWith =>
          __$$ChargeBoxInAppLoggedImplCopyWithImpl<_$ChargeBoxInAppLoggedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return chargeBoxInAppLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (chargeBoxInAppLogged != null) {
      return chargeBoxInAppLogged(data);
    }
    return orElse();
  }
}

abstract class ChargeBoxInAppLogged implements ChargeStationState {
  const factory ChargeBoxInAppLogged({final ChargeBoxDataModel? data}) =
      _$ChargeBoxInAppLoggedImpl;

  ChargeBoxDataModel? get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeBoxInAppLoggedImplCopyWith<_$ChargeBoxInAppLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailChargeStationLoggedImplCopyWith<$Res> {
  factory _$$DetailChargeStationLoggedImplCopyWith(
          _$DetailChargeStationLoggedImpl value,
          $Res Function(_$DetailChargeStationLoggedImpl) then) =
      __$$DetailChargeStationLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStationModel? data});
}

/// @nodoc
class __$$DetailChargeStationLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$DetailChargeStationLoggedImpl>
    implements _$$DetailChargeStationLoggedImplCopyWith<$Res> {
  __$$DetailChargeStationLoggedImplCopyWithImpl(
      _$DetailChargeStationLoggedImpl _value,
      $Res Function(_$DetailChargeStationLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DetailChargeStationLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeStationModel?,
    ));
  }
}

/// @nodoc

class _$DetailChargeStationLoggedImpl implements DetailChargeStationLogged {
  const _$DetailChargeStationLoggedImpl({this.data});

  @override
  final ChargeStationModel? data;

  @override
  String toString() {
    return 'ChargeStationState.detailChargeStation(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailChargeStationLoggedImplCopyWith<_$DetailChargeStationLoggedImpl>
      get copyWith => __$$DetailChargeStationLoggedImplCopyWithImpl<
          _$DetailChargeStationLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return detailChargeStation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailChargeStation != null) {
      return detailChargeStation(data);
    }
    return orElse();
  }
}

abstract class DetailChargeStationLogged implements ChargeStationState {
  const factory DetailChargeStationLogged({final ChargeStationModel? data}) =
      _$DetailChargeStationLoggedImpl;

  ChargeStationModel? get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailChargeStationLoggedImplCopyWith<_$DetailChargeStationLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailChargeBoxLoggedImplCopyWith<$Res> {
  factory _$$DetailChargeBoxLoggedImplCopyWith(
          _$DetailChargeBoxLoggedImpl value,
          $Res Function(_$DetailChargeBoxLoggedImpl) then) =
      __$$DetailChargeBoxLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeBoxModel> data});
}

/// @nodoc
class __$$DetailChargeBoxLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$DetailChargeBoxLoggedImpl>
    implements _$$DetailChargeBoxLoggedImplCopyWith<$Res> {
  __$$DetailChargeBoxLoggedImplCopyWithImpl(_$DetailChargeBoxLoggedImpl _value,
      $Res Function(_$DetailChargeBoxLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailChargeBoxLoggedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeBoxModel>,
    ));
  }
}

/// @nodoc

class _$DetailChargeBoxLoggedImpl implements DetailChargeBoxLogged {
  const _$DetailChargeBoxLoggedImpl({required final List<ChargeBoxModel> data})
      : _data = data;

  final List<ChargeBoxModel> _data;
  @override
  List<ChargeBoxModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChargeStationState.detailChargeBox(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailChargeBoxLoggedImplCopyWith<_$DetailChargeBoxLoggedImpl>
      get copyWith => __$$DetailChargeBoxLoggedImplCopyWithImpl<
          _$DetailChargeBoxLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return detailChargeBox?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailChargeBox != null) {
      return detailChargeBox(data);
    }
    return orElse();
  }
}

abstract class DetailChargeBoxLogged implements ChargeStationState {
  const factory DetailChargeBoxLogged(
      {required final List<ChargeBoxModel> data}) = _$DetailChargeBoxLoggedImpl;

  List<ChargeBoxModel> get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailChargeBoxLoggedImplCopyWith<_$DetailChargeBoxLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeBoxLoggedImplCopyWith<$Res> {
  factory _$$ChargeBoxLoggedImplCopyWith(_$ChargeBoxLoggedImpl value,
          $Res Function(_$ChargeBoxLoggedImpl) then) =
      __$$ChargeBoxLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxModel data});
}

/// @nodoc
class __$$ChargeBoxLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeBoxLoggedImpl>
    implements _$$ChargeBoxLoggedImplCopyWith<$Res> {
  __$$ChargeBoxLoggedImplCopyWithImpl(
      _$ChargeBoxLoggedImpl _value, $Res Function(_$ChargeBoxLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeBoxLoggedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxModel,
    ));
  }
}

/// @nodoc

class _$ChargeBoxLoggedImpl implements ChargeBoxLogged {
  const _$ChargeBoxLoggedImpl({required this.data});

  @override
  final ChargeBoxModel data;

  @override
  String toString() {
    return 'ChargeStationState.chargeBox(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeBoxLoggedImplCopyWith<_$ChargeBoxLoggedImpl> get copyWith =>
      __$$ChargeBoxLoggedImplCopyWithImpl<_$ChargeBoxLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return chargeBox?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (chargeBox != null) {
      return chargeBox(data);
    }
    return orElse();
  }
}

abstract class ChargeBoxLogged implements ChargeStationState {
  const factory ChargeBoxLogged({required final ChargeBoxModel data}) =
      _$ChargeBoxLoggedImpl;

  ChargeBoxModel get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeBoxLoggedImplCopyWith<_$ChargeBoxLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedChargeTypesImplCopyWith<$Res> {
  factory _$$LoggedChargeTypesImplCopyWith(_$LoggedChargeTypesImpl value,
          $Res Function(_$LoggedChargeTypesImpl) then) =
      __$$LoggedChargeTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeTypeModel> data});
}

/// @nodoc
class __$$LoggedChargeTypesImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$LoggedChargeTypesImpl>
    implements _$$LoggedChargeTypesImplCopyWith<$Res> {
  __$$LoggedChargeTypesImplCopyWithImpl(_$LoggedChargeTypesImpl _value,
      $Res Function(_$LoggedChargeTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoggedChargeTypesImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeTypeModel>,
    ));
  }
}

/// @nodoc

class _$LoggedChargeTypesImpl implements LoggedChargeTypes {
  const _$LoggedChargeTypesImpl({required final List<ChargeTypeModel> data})
      : _data = data;

  final List<ChargeTypeModel> _data;
  @override
  List<ChargeTypeModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChargeStationState.loggedChargeTypes(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedChargeTypesImplCopyWith<_$LoggedChargeTypesImpl> get copyWith =>
      __$$LoggedChargeTypesImplCopyWithImpl<_$LoggedChargeTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return loggedChargeTypes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loggedChargeTypes != null) {
      return loggedChargeTypes(data);
    }
    return orElse();
  }
}

abstract class LoggedChargeTypes implements ChargeStationState {
  const factory LoggedChargeTypes({required final List<ChargeTypeModel> data}) =
      _$LoggedChargeTypesImpl;

  List<ChargeTypeModel> get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedChargeTypesImplCopyWith<_$LoggedChargeTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationConnectorsLoggedImplCopyWith<$Res> {
  factory _$$ChargeStationConnectorsLoggedImplCopyWith(
          _$ChargeStationConnectorsLoggedImpl value,
          $Res Function(_$ChargeStationConnectorsLoggedImpl) then) =
      __$$ChargeStationConnectorsLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxModel? data});
}

/// @nodoc
class __$$ChargeStationConnectorsLoggedImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationConnectorsLoggedImpl>
    implements _$$ChargeStationConnectorsLoggedImplCopyWith<$Res> {
  __$$ChargeStationConnectorsLoggedImplCopyWithImpl(
      _$ChargeStationConnectorsLoggedImpl _value,
      $Res Function(_$ChargeStationConnectorsLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeStationConnectorsLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxModel?,
    ));
  }
}

/// @nodoc

class _$ChargeStationConnectorsLoggedImpl
    implements ChargeStationConnectorsLogged {
  const _$ChargeStationConnectorsLoggedImpl({this.data});

  @override
  final ChargeBoxModel? data;

  @override
  String toString() {
    return 'ChargeStationState.connectorsLogged(data: $data)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationConnectorsLoggedImplCopyWith<
          _$ChargeStationConnectorsLoggedImpl>
      get copyWith => __$$ChargeStationConnectorsLoggedImplCopyWithImpl<
          _$ChargeStationConnectorsLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return connectorsLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (connectorsLogged != null) {
      return connectorsLogged(data);
    }
    return orElse();
  }
}

abstract class ChargeStationConnectorsLogged implements ChargeStationState {
  const factory ChargeStationConnectorsLogged({final ChargeBoxModel? data}) =
      _$ChargeStationConnectorsLoggedImpl;

  ChargeBoxModel? get data;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationConnectorsLoggedImplCopyWith<
          _$ChargeStationConnectorsLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationErrorImplCopyWith<$Res> {
  factory _$$ChargeStationErrorImplCopyWith(_$ChargeStationErrorImpl value,
          $Res Function(_$ChargeStationErrorImpl) then) =
      __$$ChargeStationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ChargeStationErrorImplCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationErrorImpl>
    implements _$$ChargeStationErrorImplCopyWith<$Res> {
  __$$ChargeStationErrorImplCopyWithImpl(_$ChargeStationErrorImpl _value,
      $Res Function(_$ChargeStationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChargeStationErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChargeStationErrorImpl implements ChargeStationError {
  const _$ChargeStationErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ChargeStationState.error(error: $error)';
  }

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationErrorImplCopyWith<_$ChargeStationErrorImpl> get copyWith =>
      __$$ChargeStationErrorImplCopyWithImpl<_$ChargeStationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function(ConnectorsModel? data)? scanQrSuccess,
    TResult? Function()? nothing,
    TResult? Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult? Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult? Function(RouteDirectionModel data)? mapLogged,
    TResult? Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult? Function(ChargeStationModel? data)? detailChargeStation,
    TResult? Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult? Function(ChargeBoxModel data)? chargeBox,
    TResult? Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult? Function(ChargeBoxModel? data)? connectorsLogged,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function(ConnectorsModel? data)? scanQrSuccess,
    TResult Function()? nothing,
    TResult Function(List<ChargeStationModel> data, bool? isFinish)? logged,
    TResult Function(List<ChargeStationModel> data)? searchHistoryLogged,
    TResult Function(RouteDirectionModel data)? mapLogged,
    TResult Function(ChargeBoxDataModel? data)? chargeBoxInAppLogged,
    TResult Function(ChargeStationModel? data)? detailChargeStation,
    TResult Function(List<ChargeBoxModel> data)? detailChargeBox,
    TResult Function(ChargeBoxModel data)? chargeBox,
    TResult Function(List<ChargeTypeModel> data)? loggedChargeTypes,
    TResult Function(ChargeBoxModel? data)? connectorsLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class ChargeStationError implements ChargeStationState {
  const factory ChargeStationError({final String? error}) =
      _$ChargeStationErrorImpl;

  String? get error;

  /// Create a copy of ChargeStationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeStationErrorImplCopyWith<_$ChargeStationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
