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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$ChargeStationLoadingCopyWith<$Res> {
  factory _$$ChargeStationLoadingCopyWith(_$ChargeStationLoading value,
          $Res Function(_$ChargeStationLoading) then) =
      __$$ChargeStationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationLoadingCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationLoading>
    implements _$$ChargeStationLoadingCopyWith<$Res> {
  __$$ChargeStationLoadingCopyWithImpl(_$ChargeStationLoading _value,
      $Res Function(_$ChargeStationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeStationLoading implements ChargeStationLoading {
  const _$ChargeStationLoading();

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
  const factory ChargeStationLoading() = _$ChargeStationLoading;
}

/// @nodoc
abstract class _$$ChargeStationScreenLoadingCopyWith<$Res> {
  factory _$$ChargeStationScreenLoadingCopyWith(
          _$ChargeStationScreenLoading value,
          $Res Function(_$ChargeStationScreenLoading) then) =
      __$$ChargeStationScreenLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationScreenLoadingCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationScreenLoading>
    implements _$$ChargeStationScreenLoadingCopyWith<$Res> {
  __$$ChargeStationScreenLoadingCopyWithImpl(
      _$ChargeStationScreenLoading _value,
      $Res Function(_$ChargeStationScreenLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeStationScreenLoading implements ChargeStationScreenLoading {
  const _$ChargeStationScreenLoading();

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
  const factory ChargeStationScreenLoading() = _$ChargeStationScreenLoading;
}

/// @nodoc
abstract class _$$ChargeStationScanQrSuccessCopyWith<$Res> {
  factory _$$ChargeStationScanQrSuccessCopyWith(
          _$ChargeStationScanQrSuccess value,
          $Res Function(_$ChargeStationScanQrSuccess) then) =
      __$$ChargeStationScanQrSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorsModel? data});
}

/// @nodoc
class __$$ChargeStationScanQrSuccessCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationScanQrSuccess>
    implements _$$ChargeStationScanQrSuccessCopyWith<$Res> {
  __$$ChargeStationScanQrSuccessCopyWithImpl(
      _$ChargeStationScanQrSuccess _value,
      $Res Function(_$ChargeStationScanQrSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeStationScanQrSuccess(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectorsModel?,
    ));
  }
}

/// @nodoc

class _$ChargeStationScanQrSuccess implements ChargeStationScanQrSuccess {
  const _$ChargeStationScanQrSuccess({this.data});

  @override
  final ConnectorsModel? data;

  @override
  String toString() {
    return 'ChargeStationState.scanQrSuccess(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationScanQrSuccessCopyWith<_$ChargeStationScanQrSuccess>
      get copyWith => __$$ChargeStationScanQrSuccessCopyWithImpl<
          _$ChargeStationScanQrSuccess>(this, _$identity);

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
      _$ChargeStationScanQrSuccess;

  ConnectorsModel? get data;
  @JsonKey(ignore: true)
  _$$ChargeStationScanQrSuccessCopyWith<_$ChargeStationScanQrSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationNothingCopyWith<$Res> {
  factory _$$ChargeStationNothingCopyWith(_$ChargeStationNothing value,
          $Res Function(_$ChargeStationNothing) then) =
      __$$ChargeStationNothingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChargeStationNothingCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationNothing>
    implements _$$ChargeStationNothingCopyWith<$Res> {
  __$$ChargeStationNothingCopyWithImpl(_$ChargeStationNothing _value,
      $Res Function(_$ChargeStationNothing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChargeStationNothing implements ChargeStationNothing {
  const _$ChargeStationNothing();

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
  const factory ChargeStationNothing() = _$ChargeStationNothing;
}

/// @nodoc
abstract class _$$ChargeStationLoggedCopyWith<$Res> {
  factory _$$ChargeStationLoggedCopyWith(_$ChargeStationLogged value,
          $Res Function(_$ChargeStationLogged) then) =
      __$$ChargeStationLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeStationModel> data, bool? isFinish});
}

/// @nodoc
class __$$ChargeStationLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationLogged>
    implements _$$ChargeStationLoggedCopyWith<$Res> {
  __$$ChargeStationLoggedCopyWithImpl(
      _$ChargeStationLogged _value, $Res Function(_$ChargeStationLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isFinish = freezed,
  }) {
    return _then(_$ChargeStationLogged(
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

class _$ChargeStationLogged implements ChargeStationLogged {
  const _$ChargeStationLogged(
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationLoggedCopyWith<_$ChargeStationLogged> get copyWith =>
      __$$ChargeStationLoggedCopyWithImpl<_$ChargeStationLogged>(
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
      final bool? isFinish}) = _$ChargeStationLogged;

  List<ChargeStationModel> get data;
  bool? get isFinish;
  @JsonKey(ignore: true)
  _$$ChargeStationLoggedCopyWith<_$ChargeStationLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationSearchHistoryLoggedCopyWith<$Res> {
  factory _$$ChargeStationSearchHistoryLoggedCopyWith(
          _$ChargeStationSearchHistoryLogged value,
          $Res Function(_$ChargeStationSearchHistoryLogged) then) =
      __$$ChargeStationSearchHistoryLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeStationModel> data});
}

/// @nodoc
class __$$ChargeStationSearchHistoryLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationSearchHistoryLogged>
    implements _$$ChargeStationSearchHistoryLoggedCopyWith<$Res> {
  __$$ChargeStationSearchHistoryLoggedCopyWithImpl(
      _$ChargeStationSearchHistoryLogged _value,
      $Res Function(_$ChargeStationSearchHistoryLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeStationSearchHistoryLogged(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeStationModel>,
    ));
  }
}

/// @nodoc

class _$ChargeStationSearchHistoryLogged
    implements ChargeStationSearchHistoryLogged {
  const _$ChargeStationSearchHistoryLogged(
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationSearchHistoryLoggedCopyWith<
          _$ChargeStationSearchHistoryLogged>
      get copyWith => __$$ChargeStationSearchHistoryLoggedCopyWithImpl<
          _$ChargeStationSearchHistoryLogged>(this, _$identity);

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
      _$ChargeStationSearchHistoryLogged;

  List<ChargeStationModel> get data;
  @JsonKey(ignore: true)
  _$$ChargeStationSearchHistoryLoggedCopyWith<
          _$ChargeStationSearchHistoryLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationMapLoggedCopyWith<$Res> {
  factory _$$ChargeStationMapLoggedCopyWith(_$ChargeStationMapLogged value,
          $Res Function(_$ChargeStationMapLogged) then) =
      __$$ChargeStationMapLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({RouteDirectionModel data});
}

/// @nodoc
class __$$ChargeStationMapLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationMapLogged>
    implements _$$ChargeStationMapLoggedCopyWith<$Res> {
  __$$ChargeStationMapLoggedCopyWithImpl(_$ChargeStationMapLogged _value,
      $Res Function(_$ChargeStationMapLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeStationMapLogged(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RouteDirectionModel,
    ));
  }
}

/// @nodoc

class _$ChargeStationMapLogged implements ChargeStationMapLogged {
  const _$ChargeStationMapLogged({required this.data});

  @override
  final RouteDirectionModel data;

  @override
  String toString() {
    return 'ChargeStationState.mapLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationMapLoggedCopyWith<_$ChargeStationMapLogged> get copyWith =>
      __$$ChargeStationMapLoggedCopyWithImpl<_$ChargeStationMapLogged>(
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
      {required final RouteDirectionModel data}) = _$ChargeStationMapLogged;

  RouteDirectionModel get data;
  @JsonKey(ignore: true)
  _$$ChargeStationMapLoggedCopyWith<_$ChargeStationMapLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeBoxInAppLoggedCopyWith<$Res> {
  factory _$$ChargeBoxInAppLoggedCopyWith(_$ChargeBoxInAppLogged value,
          $Res Function(_$ChargeBoxInAppLogged) then) =
      __$$ChargeBoxInAppLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxDataModel? data});
}

/// @nodoc
class __$$ChargeBoxInAppLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeBoxInAppLogged>
    implements _$$ChargeBoxInAppLoggedCopyWith<$Res> {
  __$$ChargeBoxInAppLoggedCopyWithImpl(_$ChargeBoxInAppLogged _value,
      $Res Function(_$ChargeBoxInAppLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeBoxInAppLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxDataModel?,
    ));
  }
}

/// @nodoc

class _$ChargeBoxInAppLogged implements ChargeBoxInAppLogged {
  const _$ChargeBoxInAppLogged({this.data});

  @override
  final ChargeBoxDataModel? data;

  @override
  String toString() {
    return 'ChargeStationState.chargeBoxInAppLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeBoxInAppLoggedCopyWith<_$ChargeBoxInAppLogged> get copyWith =>
      __$$ChargeBoxInAppLoggedCopyWithImpl<_$ChargeBoxInAppLogged>(
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
      _$ChargeBoxInAppLogged;

  ChargeBoxDataModel? get data;
  @JsonKey(ignore: true)
  _$$ChargeBoxInAppLoggedCopyWith<_$ChargeBoxInAppLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailChargeStationLoggedCopyWith<$Res> {
  factory _$$DetailChargeStationLoggedCopyWith(
          _$DetailChargeStationLogged value,
          $Res Function(_$DetailChargeStationLogged) then) =
      __$$DetailChargeStationLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeStationModel? data});
}

/// @nodoc
class __$$DetailChargeStationLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$DetailChargeStationLogged>
    implements _$$DetailChargeStationLoggedCopyWith<$Res> {
  __$$DetailChargeStationLoggedCopyWithImpl(_$DetailChargeStationLogged _value,
      $Res Function(_$DetailChargeStationLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DetailChargeStationLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeStationModel?,
    ));
  }
}

/// @nodoc

class _$DetailChargeStationLogged implements DetailChargeStationLogged {
  const _$DetailChargeStationLogged({this.data});

  @override
  final ChargeStationModel? data;

  @override
  String toString() {
    return 'ChargeStationState.detailChargeStation(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailChargeStationLoggedCopyWith<_$DetailChargeStationLogged>
      get copyWith => __$$DetailChargeStationLoggedCopyWithImpl<
          _$DetailChargeStationLogged>(this, _$identity);

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
      _$DetailChargeStationLogged;

  ChargeStationModel? get data;
  @JsonKey(ignore: true)
  _$$DetailChargeStationLoggedCopyWith<_$DetailChargeStationLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailChargeBoxLoggedCopyWith<$Res> {
  factory _$$DetailChargeBoxLoggedCopyWith(_$DetailChargeBoxLogged value,
          $Res Function(_$DetailChargeBoxLogged) then) =
      __$$DetailChargeBoxLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeBoxModel> data});
}

/// @nodoc
class __$$DetailChargeBoxLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$DetailChargeBoxLogged>
    implements _$$DetailChargeBoxLoggedCopyWith<$Res> {
  __$$DetailChargeBoxLoggedCopyWithImpl(_$DetailChargeBoxLogged _value,
      $Res Function(_$DetailChargeBoxLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailChargeBoxLogged(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeBoxModel>,
    ));
  }
}

/// @nodoc

class _$DetailChargeBoxLogged implements DetailChargeBoxLogged {
  const _$DetailChargeBoxLogged({required final List<ChargeBoxModel> data})
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailChargeBoxLoggedCopyWith<_$DetailChargeBoxLogged> get copyWith =>
      __$$DetailChargeBoxLoggedCopyWithImpl<_$DetailChargeBoxLogged>(
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
      {required final List<ChargeBoxModel> data}) = _$DetailChargeBoxLogged;

  List<ChargeBoxModel> get data;
  @JsonKey(ignore: true)
  _$$DetailChargeBoxLoggedCopyWith<_$DetailChargeBoxLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeBoxLoggedCopyWith<$Res> {
  factory _$$ChargeBoxLoggedCopyWith(
          _$ChargeBoxLogged value, $Res Function(_$ChargeBoxLogged) then) =
      __$$ChargeBoxLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxModel data});
}

/// @nodoc
class __$$ChargeBoxLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeBoxLogged>
    implements _$$ChargeBoxLoggedCopyWith<$Res> {
  __$$ChargeBoxLoggedCopyWithImpl(
      _$ChargeBoxLogged _value, $Res Function(_$ChargeBoxLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChargeBoxLogged(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxModel,
    ));
  }
}

/// @nodoc

class _$ChargeBoxLogged implements ChargeBoxLogged {
  const _$ChargeBoxLogged({required this.data});

  @override
  final ChargeBoxModel data;

  @override
  String toString() {
    return 'ChargeStationState.chargeBox(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeBoxLoggedCopyWith<_$ChargeBoxLogged> get copyWith =>
      __$$ChargeBoxLoggedCopyWithImpl<_$ChargeBoxLogged>(this, _$identity);

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
      _$ChargeBoxLogged;

  ChargeBoxModel get data;
  @JsonKey(ignore: true)
  _$$ChargeBoxLoggedCopyWith<_$ChargeBoxLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedChargeTypesCopyWith<$Res> {
  factory _$$LoggedChargeTypesCopyWith(
          _$LoggedChargeTypes value, $Res Function(_$LoggedChargeTypes) then) =
      __$$LoggedChargeTypesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChargeTypeModel> data});
}

/// @nodoc
class __$$LoggedChargeTypesCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$LoggedChargeTypes>
    implements _$$LoggedChargeTypesCopyWith<$Res> {
  __$$LoggedChargeTypesCopyWithImpl(
      _$LoggedChargeTypes _value, $Res Function(_$LoggedChargeTypes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoggedChargeTypes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChargeTypeModel>,
    ));
  }
}

/// @nodoc

class _$LoggedChargeTypes implements LoggedChargeTypes {
  const _$LoggedChargeTypes({required final List<ChargeTypeModel> data})
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedChargeTypesCopyWith<_$LoggedChargeTypes> get copyWith =>
      __$$LoggedChargeTypesCopyWithImpl<_$LoggedChargeTypes>(this, _$identity);

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
      _$LoggedChargeTypes;

  List<ChargeTypeModel> get data;
  @JsonKey(ignore: true)
  _$$LoggedChargeTypesCopyWith<_$LoggedChargeTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationConnectorsLoggedCopyWith<$Res> {
  factory _$$ChargeStationConnectorsLoggedCopyWith(
          _$ChargeStationConnectorsLogged value,
          $Res Function(_$ChargeStationConnectorsLogged) then) =
      __$$ChargeStationConnectorsLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChargeBoxModel? data});
}

/// @nodoc
class __$$ChargeStationConnectorsLoggedCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res,
        _$ChargeStationConnectorsLogged>
    implements _$$ChargeStationConnectorsLoggedCopyWith<$Res> {
  __$$ChargeStationConnectorsLoggedCopyWithImpl(
      _$ChargeStationConnectorsLogged _value,
      $Res Function(_$ChargeStationConnectorsLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargeStationConnectorsLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChargeBoxModel?,
    ));
  }
}

/// @nodoc

class _$ChargeStationConnectorsLogged implements ChargeStationConnectorsLogged {
  const _$ChargeStationConnectorsLogged({this.data});

  @override
  final ChargeBoxModel? data;

  @override
  String toString() {
    return 'ChargeStationState.connectorsLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationConnectorsLoggedCopyWith<_$ChargeStationConnectorsLogged>
      get copyWith => __$$ChargeStationConnectorsLoggedCopyWithImpl<
          _$ChargeStationConnectorsLogged>(this, _$identity);

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
      _$ChargeStationConnectorsLogged;

  ChargeBoxModel? get data;
  @JsonKey(ignore: true)
  _$$ChargeStationConnectorsLoggedCopyWith<_$ChargeStationConnectorsLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargeStationErrorCopyWith<$Res> {
  factory _$$ChargeStationErrorCopyWith(_$ChargeStationError value,
          $Res Function(_$ChargeStationError) then) =
      __$$ChargeStationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ChargeStationErrorCopyWithImpl<$Res>
    extends _$ChargeStationStateCopyWithImpl<$Res, _$ChargeStationError>
    implements _$$ChargeStationErrorCopyWith<$Res> {
  __$$ChargeStationErrorCopyWithImpl(
      _$ChargeStationError _value, $Res Function(_$ChargeStationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChargeStationError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChargeStationError implements ChargeStationError {
  const _$ChargeStationError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ChargeStationState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeStationErrorCopyWith<_$ChargeStationError> get copyWith =>
      __$$ChargeStationErrorCopyWithImpl<_$ChargeStationError>(
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
      _$ChargeStationError;

  String? get error;
  @JsonKey(ignore: true)
  _$$ChargeStationErrorCopyWith<_$ChargeStationError> get copyWith =>
      throw _privateConstructorUsedError;
}
