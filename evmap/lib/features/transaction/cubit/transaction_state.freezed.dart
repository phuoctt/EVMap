// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionLoadingCopyWith<$Res> {
  factory _$$TransactionLoadingCopyWith(_$TransactionLoading value,
          $Res Function(_$TransactionLoading) then) =
      __$$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoading>
    implements _$$TransactionLoadingCopyWith<$Res> {
  __$$TransactionLoadingCopyWithImpl(
      _$TransactionLoading _value, $Res Function(_$TransactionLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionLoading implements TransactionLoading {
  const _$TransactionLoading();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class TransactionLoading implements TransactionState {
  const factory TransactionLoading() = _$TransactionLoading;
}

/// @nodoc
abstract class _$$TransactionLoggedCopyWith<$Res> {
  factory _$$TransactionLoggedCopyWith(
          _$TransactionLogged value, $Res Function(_$TransactionLogged) then) =
      __$$TransactionLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$TransactionLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLogged>
    implements _$$TransactionLoggedCopyWith<$Res> {
  __$$TransactionLoggedCopyWithImpl(
      _$TransactionLogged _value, $Res Function(_$TransactionLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$TransactionLogged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$TransactionLogged implements TransactionLogged {
  const _$TransactionLogged(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'TransactionState.logged(user: $user)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLoggedCopyWith<_$TransactionLogged> get copyWith =>
      __$$TransactionLoggedCopyWithImpl<_$TransactionLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }
}

abstract class TransactionLogged implements TransactionState {
  const factory TransactionLogged(final UserModel user) = _$TransactionLogged;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$TransactionLoggedCopyWith<_$TransactionLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionCheckActiveLoggedCopyWith<$Res> {
  factory _$$TransactionCheckActiveLoggedCopyWith(
          _$TransactionCheckActiveLogged value,
          $Res Function(_$TransactionCheckActiveLogged) then) =
      __$$TransactionCheckActiveLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<num>? ids, TransactionActiveType? type});
}

/// @nodoc
class __$$TransactionCheckActiveLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionCheckActiveLogged>
    implements _$$TransactionCheckActiveLoggedCopyWith<$Res> {
  __$$TransactionCheckActiveLoggedCopyWithImpl(
      _$TransactionCheckActiveLogged _value,
      $Res Function(_$TransactionCheckActiveLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TransactionCheckActiveLogged(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionActiveType?,
    ));
  }
}

/// @nodoc

class _$TransactionCheckActiveLogged implements TransactionCheckActiveLogged {
  const _$TransactionCheckActiveLogged({final List<num>? ids, this.type})
      : _ids = ids;

  final List<num>? _ids;
  @override
  List<num>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TransactionActiveType? type;

  @override
  String toString() {
    return 'TransactionState.checkActive(ids: $ids, type: $type)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCheckActiveLoggedCopyWith<_$TransactionCheckActiveLogged>
      get copyWith => __$$TransactionCheckActiveLoggedCopyWithImpl<
          _$TransactionCheckActiveLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return checkActive?.call(ids, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (checkActive != null) {
      return checkActive(ids, type);
    }
    return orElse();
  }
}

abstract class TransactionCheckActiveLogged implements TransactionState {
  const factory TransactionCheckActiveLogged(
      {final List<num>? ids,
      final TransactionActiveType? type}) = _$TransactionCheckActiveLogged;

  List<num>? get ids;
  TransactionActiveType? get type;
  @JsonKey(ignore: true)
  _$$TransactionCheckActiveLoggedCopyWith<_$TransactionCheckActiveLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservationkActiveLoggedCopyWith<$Res> {
  factory _$$ReservationkActiveLoggedCopyWith(_$ReservationkActiveLogged value,
          $Res Function(_$ReservationkActiveLogged) then) =
      __$$ReservationkActiveLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingModel? data});
}

/// @nodoc
class __$$ReservationkActiveLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ReservationkActiveLogged>
    implements _$$ReservationkActiveLoggedCopyWith<$Res> {
  __$$ReservationkActiveLoggedCopyWithImpl(_$ReservationkActiveLogged _value,
      $Res Function(_$ReservationkActiveLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReservationkActiveLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
    ));
  }
}

/// @nodoc

class _$ReservationkActiveLogged implements ReservationkActiveLogged {
  const _$ReservationkActiveLogged({this.data});

  @override
  final BookingModel? data;

  @override
  String toString() {
    return 'TransactionState.reservationActiveLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationkActiveLoggedCopyWith<_$ReservationkActiveLogged>
      get copyWith =>
          __$$ReservationkActiveLoggedCopyWithImpl<_$ReservationkActiveLogged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return reservationActiveLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (reservationActiveLogged != null) {
      return reservationActiveLogged(data);
    }
    return orElse();
  }
}

abstract class ReservationkActiveLogged implements TransactionState {
  const factory ReservationkActiveLogged({final BookingModel? data}) =
      _$ReservationkActiveLogged;

  BookingModel? get data;
  @JsonKey(ignore: true)
  _$$ReservationkActiveLoggedCopyWith<_$ReservationkActiveLogged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionDetailLoggedCopyWith<$Res> {
  factory _$$TransactionDetailLoggedCopyWith(_$TransactionDetailLogged value,
          $Res Function(_$TransactionDetailLogged) then) =
      __$$TransactionDetailLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel? data});
}

/// @nodoc
class __$$TransactionDetailLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionDetailLogged>
    implements _$$TransactionDetailLoggedCopyWith<$Res> {
  __$$TransactionDetailLoggedCopyWithImpl(_$TransactionDetailLogged _value,
      $Res Function(_$TransactionDetailLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TransactionDetailLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ));
  }
}

/// @nodoc

class _$TransactionDetailLogged implements TransactionDetailLogged {
  const _$TransactionDetailLogged({this.data});

  @override
  final TransactionModel? data;

  @override
  String toString() {
    return 'TransactionState.detailLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailLoggedCopyWith<_$TransactionDetailLogged> get copyWith =>
      __$$TransactionDetailLoggedCopyWithImpl<_$TransactionDetailLogged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return detailLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailLogged != null) {
      return detailLogged(data);
    }
    return orElse();
  }
}

abstract class TransactionDetailLogged implements TransactionState {
  const factory TransactionDetailLogged({final TransactionModel? data}) =
      _$TransactionDetailLogged;

  TransactionModel? get data;
  @JsonKey(ignore: true)
  _$$TransactionDetailLoggedCopyWith<_$TransactionDetailLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailBillLoggedCopyWith<$Res> {
  factory _$$DetailBillLoggedCopyWith(
          _$DetailBillLogged value, $Res Function(_$DetailBillLogged) then) =
      __$$DetailBillLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailBillModel? data});
}

/// @nodoc
class __$$DetailBillLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$DetailBillLogged>
    implements _$$DetailBillLoggedCopyWith<$Res> {
  __$$DetailBillLoggedCopyWithImpl(
      _$DetailBillLogged _value, $Res Function(_$DetailBillLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DetailBillLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailBillModel?,
    ));
  }
}

/// @nodoc

class _$DetailBillLogged implements DetailBillLogged {
  const _$DetailBillLogged({this.data});

  @override
  final DetailBillModel? data;

  @override
  String toString() {
    return 'TransactionState.detailBillLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBillLoggedCopyWith<_$DetailBillLogged> get copyWith =>
      __$$DetailBillLoggedCopyWithImpl<_$DetailBillLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return detailBillLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailBillLogged != null) {
      return detailBillLogged(data);
    }
    return orElse();
  }
}

abstract class DetailBillLogged implements TransactionState {
  const factory DetailBillLogged({final DetailBillModel? data}) =
      _$DetailBillLogged;

  DetailBillModel? get data;
  @JsonKey(ignore: true)
  _$$DetailBillLoggedCopyWith<_$DetailBillLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargingBillLoggedCopyWith<$Res> {
  factory _$$ChargingBillLoggedCopyWith(_$ChargingBillLogged value,
          $Res Function(_$ChargingBillLogged) then) =
      __$$ChargingBillLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailBillModel? data});
}

/// @nodoc
class __$$ChargingBillLoggedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ChargingBillLogged>
    implements _$$ChargingBillLoggedCopyWith<$Res> {
  __$$ChargingBillLoggedCopyWithImpl(
      _$ChargingBillLogged _value, $Res Function(_$ChargingBillLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargingBillLogged(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailBillModel?,
    ));
  }
}

/// @nodoc

class _$ChargingBillLogged implements ChargingBillLogged {
  const _$ChargingBillLogged({this.data});

  @override
  final DetailBillModel? data;

  @override
  String toString() {
    return 'TransactionState.chargingBillLogged(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargingBillLoggedCopyWith<_$ChargingBillLogged> get copyWith =>
      __$$ChargingBillLoggedCopyWithImpl<_$ChargingBillLogged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return chargingBillLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (chargingBillLogged != null) {
      return chargingBillLogged(data);
    }
    return orElse();
  }
}

abstract class ChargingBillLogged implements TransactionState {
  const factory ChargingBillLogged({final DetailBillModel? data}) =
      _$ChargingBillLogged;

  DetailBillModel? get data;
  @JsonKey(ignore: true)
  _$$ChargingBillLoggedCopyWith<_$ChargingBillLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadingScreenCopyWith<$Res> {
  factory _$$TransactionLoadingScreenCopyWith(_$TransactionLoadingScreen value,
          $Res Function(_$TransactionLoadingScreen) then) =
      __$$TransactionLoadingScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingScreenCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingScreen>
    implements _$$TransactionLoadingScreenCopyWith<$Res> {
  __$$TransactionLoadingScreenCopyWithImpl(_$TransactionLoadingScreen _value,
      $Res Function(_$TransactionLoadingScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionLoadingScreen implements TransactionLoadingScreen {
  const _$TransactionLoadingScreen();

  @override
  String toString() {
    return 'TransactionState.loadingScreen()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return loadingScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadingScreen != null) {
      return loadingScreen();
    }
    return orElse();
  }
}

abstract class TransactionLoadingScreen implements TransactionState {
  const factory TransactionLoadingScreen() = _$TransactionLoadingScreen;
}

/// @nodoc
abstract class _$$TransactionPaymentSuccessCopyWith<$Res> {
  factory _$$TransactionPaymentSuccessCopyWith(
          _$TransactionPaymentSuccess value,
          $Res Function(_$TransactionPaymentSuccess) then) =
      __$$TransactionPaymentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionPaymentSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionPaymentSuccess>
    implements _$$TransactionPaymentSuccessCopyWith<$Res> {
  __$$TransactionPaymentSuccessCopyWithImpl(_$TransactionPaymentSuccess _value,
      $Res Function(_$TransactionPaymentSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionPaymentSuccess implements TransactionPaymentSuccess {
  const _$TransactionPaymentSuccess();

  @override
  String toString() {
    return 'TransactionState.paymentSuccess()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return paymentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess();
    }
    return orElse();
  }
}

abstract class TransactionPaymentSuccess implements TransactionState {
  const factory TransactionPaymentSuccess() = _$TransactionPaymentSuccess;
}

/// @nodoc
abstract class _$$TransactionErrorCopyWith<$Res> {
  factory _$$TransactionErrorCopyWith(
          _$TransactionError value, $Res Function(_$TransactionError) then) =
      __$$TransactionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$TransactionErrorCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionError>
    implements _$$TransactionErrorCopyWith<$Res> {
  __$$TransactionErrorCopyWithImpl(
      _$TransactionError _value, $Res Function(_$TransactionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TransactionError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionError implements TransactionError {
  const _$TransactionError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'TransactionState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorCopyWith<_$TransactionError> get copyWith =>
      __$$TransactionErrorCopyWithImpl<_$TransactionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? logged,
    TResult? Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult? Function(BookingModel? data)? reservationActiveLogged,
    TResult? Function(TransactionModel? data)? detailLogged,
    TResult? Function(DetailBillModel? data)? detailBillLogged,
    TResult? Function(DetailBillModel? data)? chargingBillLogged,
    TResult? Function()? loadingScreen,
    TResult? Function()? paymentSuccess,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? logged,
    TResult Function(List<num>? ids, TransactionActiveType? type)? checkActive,
    TResult Function(BookingModel? data)? reservationActiveLogged,
    TResult Function(TransactionModel? data)? detailLogged,
    TResult Function(DetailBillModel? data)? detailBillLogged,
    TResult Function(DetailBillModel? data)? chargingBillLogged,
    TResult Function()? loadingScreen,
    TResult Function()? paymentSuccess,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class TransactionError implements TransactionState {
  const factory TransactionError({final String? error}) = _$TransactionError;

  String? get error;
  @JsonKey(ignore: true)
  _$$TransactionErrorCopyWith<_$TransactionError> get copyWith =>
      throw _privateConstructorUsedError;
}
