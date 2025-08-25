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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionLoadingImplCopyWith<$Res> {
  factory _$$TransactionLoadingImplCopyWith(_$TransactionLoadingImpl value,
          $Res Function(_$TransactionLoadingImpl) then) =
      __$$TransactionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingImpl>
    implements _$$TransactionLoadingImplCopyWith<$Res> {
  __$$TransactionLoadingImplCopyWithImpl(_$TransactionLoadingImpl _value,
      $Res Function(_$TransactionLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionLoadingImpl implements TransactionLoading {
  const _$TransactionLoadingImpl();

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
  const factory TransactionLoading() = _$TransactionLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionLoggedImplCopyWith<$Res> {
  factory _$$TransactionLoggedImplCopyWith(_$TransactionLoggedImpl value,
          $Res Function(_$TransactionLoggedImpl) then) =
      __$$TransactionLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$TransactionLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoggedImpl>
    implements _$$TransactionLoggedImplCopyWith<$Res> {
  __$$TransactionLoggedImplCopyWithImpl(_$TransactionLoggedImpl _value,
      $Res Function(_$TransactionLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$TransactionLoggedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$TransactionLoggedImpl implements TransactionLogged {
  const _$TransactionLoggedImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'TransactionState.logged(user: $user)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLoggedImplCopyWith<_$TransactionLoggedImpl> get copyWith =>
      __$$TransactionLoggedImplCopyWithImpl<_$TransactionLoggedImpl>(
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
  const factory TransactionLogged(final UserModel user) =
      _$TransactionLoggedImpl;

  UserModel get user;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionLoggedImplCopyWith<_$TransactionLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionCheckActiveLoggedImplCopyWith<$Res> {
  factory _$$TransactionCheckActiveLoggedImplCopyWith(
          _$TransactionCheckActiveLoggedImpl value,
          $Res Function(_$TransactionCheckActiveLoggedImpl) then) =
      __$$TransactionCheckActiveLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<num>? ids, TransactionActiveType? type});
}

/// @nodoc
class __$$TransactionCheckActiveLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res,
        _$TransactionCheckActiveLoggedImpl>
    implements _$$TransactionCheckActiveLoggedImplCopyWith<$Res> {
  __$$TransactionCheckActiveLoggedImplCopyWithImpl(
      _$TransactionCheckActiveLoggedImpl _value,
      $Res Function(_$TransactionCheckActiveLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TransactionCheckActiveLoggedImpl(
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

class _$TransactionCheckActiveLoggedImpl
    implements TransactionCheckActiveLogged {
  const _$TransactionCheckActiveLoggedImpl({final List<num>? ids, this.type})
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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCheckActiveLoggedImplCopyWith<
          _$TransactionCheckActiveLoggedImpl>
      get copyWith => __$$TransactionCheckActiveLoggedImplCopyWithImpl<
          _$TransactionCheckActiveLoggedImpl>(this, _$identity);

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
      final TransactionActiveType? type}) = _$TransactionCheckActiveLoggedImpl;

  List<num>? get ids;
  TransactionActiveType? get type;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCheckActiveLoggedImplCopyWith<
          _$TransactionCheckActiveLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservationkActiveLoggedImplCopyWith<$Res> {
  factory _$$ReservationkActiveLoggedImplCopyWith(
          _$ReservationkActiveLoggedImpl value,
          $Res Function(_$ReservationkActiveLoggedImpl) then) =
      __$$ReservationkActiveLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingModel? data});
}

/// @nodoc
class __$$ReservationkActiveLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ReservationkActiveLoggedImpl>
    implements _$$ReservationkActiveLoggedImplCopyWith<$Res> {
  __$$ReservationkActiveLoggedImplCopyWithImpl(
      _$ReservationkActiveLoggedImpl _value,
      $Res Function(_$ReservationkActiveLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReservationkActiveLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
    ));
  }
}

/// @nodoc

class _$ReservationkActiveLoggedImpl implements ReservationkActiveLogged {
  const _$ReservationkActiveLoggedImpl({this.data});

  @override
  final BookingModel? data;

  @override
  String toString() {
    return 'TransactionState.reservationActiveLogged(data: $data)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationkActiveLoggedImplCopyWith<_$ReservationkActiveLoggedImpl>
      get copyWith => __$$ReservationkActiveLoggedImplCopyWithImpl<
          _$ReservationkActiveLoggedImpl>(this, _$identity);

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
      _$ReservationkActiveLoggedImpl;

  BookingModel? get data;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationkActiveLoggedImplCopyWith<_$ReservationkActiveLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionDetailLoggedImplCopyWith<$Res> {
  factory _$$TransactionDetailLoggedImplCopyWith(
          _$TransactionDetailLoggedImpl value,
          $Res Function(_$TransactionDetailLoggedImpl) then) =
      __$$TransactionDetailLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel? data});
}

/// @nodoc
class __$$TransactionDetailLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionDetailLoggedImpl>
    implements _$$TransactionDetailLoggedImplCopyWith<$Res> {
  __$$TransactionDetailLoggedImplCopyWithImpl(
      _$TransactionDetailLoggedImpl _value,
      $Res Function(_$TransactionDetailLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TransactionDetailLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ));
  }
}

/// @nodoc

class _$TransactionDetailLoggedImpl implements TransactionDetailLogged {
  const _$TransactionDetailLoggedImpl({this.data});

  @override
  final TransactionModel? data;

  @override
  String toString() {
    return 'TransactionState.detailLogged(data: $data)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailLoggedImplCopyWith<_$TransactionDetailLoggedImpl>
      get copyWith => __$$TransactionDetailLoggedImplCopyWithImpl<
          _$TransactionDetailLoggedImpl>(this, _$identity);

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
      _$TransactionDetailLoggedImpl;

  TransactionModel? get data;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDetailLoggedImplCopyWith<_$TransactionDetailLoggedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailBillLoggedImplCopyWith<$Res> {
  factory _$$DetailBillLoggedImplCopyWith(_$DetailBillLoggedImpl value,
          $Res Function(_$DetailBillLoggedImpl) then) =
      __$$DetailBillLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailBillModel? data});
}

/// @nodoc
class __$$DetailBillLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$DetailBillLoggedImpl>
    implements _$$DetailBillLoggedImplCopyWith<$Res> {
  __$$DetailBillLoggedImplCopyWithImpl(_$DetailBillLoggedImpl _value,
      $Res Function(_$DetailBillLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DetailBillLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailBillModel?,
    ));
  }
}

/// @nodoc

class _$DetailBillLoggedImpl implements DetailBillLogged {
  const _$DetailBillLoggedImpl({this.data});

  @override
  final DetailBillModel? data;

  @override
  String toString() {
    return 'TransactionState.detailBillLogged(data: $data)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBillLoggedImplCopyWith<_$DetailBillLoggedImpl> get copyWith =>
      __$$DetailBillLoggedImplCopyWithImpl<_$DetailBillLoggedImpl>(
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
      _$DetailBillLoggedImpl;

  DetailBillModel? get data;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailBillLoggedImplCopyWith<_$DetailBillLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChargingBillLoggedImplCopyWith<$Res> {
  factory _$$ChargingBillLoggedImplCopyWith(_$ChargingBillLoggedImpl value,
          $Res Function(_$ChargingBillLoggedImpl) then) =
      __$$ChargingBillLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailBillModel? data});
}

/// @nodoc
class __$$ChargingBillLoggedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ChargingBillLoggedImpl>
    implements _$$ChargingBillLoggedImplCopyWith<$Res> {
  __$$ChargingBillLoggedImplCopyWithImpl(_$ChargingBillLoggedImpl _value,
      $Res Function(_$ChargingBillLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChargingBillLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailBillModel?,
    ));
  }
}

/// @nodoc

class _$ChargingBillLoggedImpl implements ChargingBillLogged {
  const _$ChargingBillLoggedImpl({this.data});

  @override
  final DetailBillModel? data;

  @override
  String toString() {
    return 'TransactionState.chargingBillLogged(data: $data)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargingBillLoggedImplCopyWith<_$ChargingBillLoggedImpl> get copyWith =>
      __$$ChargingBillLoggedImplCopyWithImpl<_$ChargingBillLoggedImpl>(
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
      _$ChargingBillLoggedImpl;

  DetailBillModel? get data;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargingBillLoggedImplCopyWith<_$ChargingBillLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadingScreenImplCopyWith<$Res> {
  factory _$$TransactionLoadingScreenImplCopyWith(
          _$TransactionLoadingScreenImpl value,
          $Res Function(_$TransactionLoadingScreenImpl) then) =
      __$$TransactionLoadingScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingScreenImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingScreenImpl>
    implements _$$TransactionLoadingScreenImplCopyWith<$Res> {
  __$$TransactionLoadingScreenImplCopyWithImpl(
      _$TransactionLoadingScreenImpl _value,
      $Res Function(_$TransactionLoadingScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionLoadingScreenImpl implements TransactionLoadingScreen {
  const _$TransactionLoadingScreenImpl();

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
  const factory TransactionLoadingScreen() = _$TransactionLoadingScreenImpl;
}

/// @nodoc
abstract class _$$TransactionPaymentSuccessImplCopyWith<$Res> {
  factory _$$TransactionPaymentSuccessImplCopyWith(
          _$TransactionPaymentSuccessImpl value,
          $Res Function(_$TransactionPaymentSuccessImpl) then) =
      __$$TransactionPaymentSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionPaymentSuccessImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res,
        _$TransactionPaymentSuccessImpl>
    implements _$$TransactionPaymentSuccessImplCopyWith<$Res> {
  __$$TransactionPaymentSuccessImplCopyWithImpl(
      _$TransactionPaymentSuccessImpl _value,
      $Res Function(_$TransactionPaymentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionPaymentSuccessImpl implements TransactionPaymentSuccess {
  const _$TransactionPaymentSuccessImpl();

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
  const factory TransactionPaymentSuccess() = _$TransactionPaymentSuccessImpl;
}

/// @nodoc
abstract class _$$TransactionErrorImplCopyWith<$Res> {
  factory _$$TransactionErrorImplCopyWith(_$TransactionErrorImpl value,
          $Res Function(_$TransactionErrorImpl) then) =
      __$$TransactionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$TransactionErrorImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorImpl>
    implements _$$TransactionErrorImplCopyWith<$Res> {
  __$$TransactionErrorImplCopyWithImpl(_$TransactionErrorImpl _value,
      $Res Function(_$TransactionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TransactionErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionErrorImpl implements TransactionError {
  const _$TransactionErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'TransactionState.error(error: $error)';
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      __$$TransactionErrorImplCopyWithImpl<_$TransactionErrorImpl>(
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
  const factory TransactionError({final String? error}) =
      _$TransactionErrorImpl;

  String? get error;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
