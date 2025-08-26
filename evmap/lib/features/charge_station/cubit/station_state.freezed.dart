// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StationState {
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationStateCopyWith<$Res> {
  factory $StationStateCopyWith(
          StationState value, $Res Function(StationState) then) =
      _$StationStateCopyWithImpl<$Res, StationState>;
}

/// @nodoc
class _$StationStateCopyWithImpl<$Res, $Val extends StationState>
    implements $StationStateCopyWith<$Res> {
  _$StationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StationLoadingImplCopyWith<$Res> {
  factory _$$StationLoadingImplCopyWith(_$StationLoadingImpl value,
          $Res Function(_$StationLoadingImpl) then) =
      __$$StationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StationLoadingImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationLoadingImpl>
    implements _$$StationLoadingImplCopyWith<$Res> {
  __$$StationLoadingImplCopyWithImpl(
      _$StationLoadingImpl _value, $Res Function(_$StationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StationLoadingImpl implements StationLoading {
  const _$StationLoadingImpl();

  @override
  String toString() {
    return 'StationState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class StationLoading implements StationState {
  const factory StationLoading() = _$StationLoadingImpl;
}

/// @nodoc
abstract class _$$StationScreenLoadingImplCopyWith<$Res> {
  factory _$$StationScreenLoadingImplCopyWith(_$StationScreenLoadingImpl value,
          $Res Function(_$StationScreenLoadingImpl) then) =
      __$$StationScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StationScreenLoadingImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationScreenLoadingImpl>
    implements _$$StationScreenLoadingImplCopyWith<$Res> {
  __$$StationScreenLoadingImplCopyWithImpl(_$StationScreenLoadingImpl _value,
      $Res Function(_$StationScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StationScreenLoadingImpl implements StationScreenLoading {
  const _$StationScreenLoadingImpl();

  @override
  String toString() {
    return 'StationState.screenLoading()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return screenLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (screenLoading != null) {
      return screenLoading();
    }
    return orElse();
  }
}

abstract class StationScreenLoading implements StationState {
  const factory StationScreenLoading() = _$StationScreenLoadingImpl;
}

/// @nodoc
abstract class _$$StationNothingImplCopyWith<$Res> {
  factory _$$StationNothingImplCopyWith(_$StationNothingImpl value,
          $Res Function(_$StationNothingImpl) then) =
      __$$StationNothingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StationNothingImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationNothingImpl>
    implements _$$StationNothingImplCopyWith<$Res> {
  __$$StationNothingImplCopyWithImpl(
      _$StationNothingImpl _value, $Res Function(_$StationNothingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StationNothingImpl implements StationNothing {
  const _$StationNothingImpl();

  @override
  String toString() {
    return 'StationState.nothing()';
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return nothing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }
}

abstract class StationNothing implements StationState {
  const factory StationNothing() = _$StationNothingImpl;
}

/// @nodoc
abstract class _$$StationLoggedImplCopyWith<$Res> {
  factory _$$StationLoggedImplCopyWith(
          _$StationLoggedImpl value, $Res Function(_$StationLoggedImpl) then) =
      __$$StationLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Station> data, bool? isFinish});
}

/// @nodoc
class __$$StationLoggedImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationLoggedImpl>
    implements _$$StationLoggedImplCopyWith<$Res> {
  __$$StationLoggedImplCopyWithImpl(
      _$StationLoggedImpl _value, $Res Function(_$StationLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isFinish = freezed,
  }) {
    return _then(_$StationLoggedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Station>,
      isFinish: freezed == isFinish
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$StationLoggedImpl implements StationLogged {
  const _$StationLoggedImpl({required final List<Station> data, this.isFinish})
      : _data = data;

  final List<Station> _data;
  @override
  List<Station> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool? isFinish;

  @override
  String toString() {
    return 'StationState.logged(data: $data, isFinish: $isFinish)';
  }

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationLoggedImplCopyWith<_$StationLoggedImpl> get copyWith =>
      __$$StationLoggedImplCopyWithImpl<_$StationLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return logged?.call(data, isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(data, isFinish);
    }
    return orElse();
  }
}

abstract class StationLogged implements StationState {
  const factory StationLogged(
      {required final List<Station> data,
      final bool? isFinish}) = _$StationLoggedImpl;

  List<Station> get data;
  bool? get isFinish;

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationLoggedImplCopyWith<_$StationLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StationDetaiLoggedImplCopyWith<$Res> {
  factory _$$StationDetaiLoggedImplCopyWith(_$StationDetaiLoggedImpl value,
          $Res Function(_$StationDetaiLoggedImpl) then) =
      __$$StationDetaiLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Station? data});
}

/// @nodoc
class __$$StationDetaiLoggedImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationDetaiLoggedImpl>
    implements _$$StationDetaiLoggedImplCopyWith<$Res> {
  __$$StationDetaiLoggedImplCopyWithImpl(_$StationDetaiLoggedImpl _value,
      $Res Function(_$StationDetaiLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StationDetaiLoggedImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Station?,
    ));
  }
}

/// @nodoc

class _$StationDetaiLoggedImpl implements StationDetaiLogged {
  const _$StationDetaiLoggedImpl({this.data});

  @override
  final Station? data;

  @override
  String toString() {
    return 'StationState.detailLogged(data: $data)';
  }

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationDetaiLoggedImplCopyWith<_$StationDetaiLoggedImpl> get copyWith =>
      __$$StationDetaiLoggedImplCopyWithImpl<_$StationDetaiLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return detailLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (detailLogged != null) {
      return detailLogged(data);
    }
    return orElse();
  }
}

abstract class StationDetaiLogged implements StationState {
  const factory StationDetaiLogged({final Station? data}) =
      _$StationDetaiLoggedImpl;

  Station? get data;

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationDetaiLoggedImplCopyWith<_$StationDetaiLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StationErrorImplCopyWith<$Res> {
  factory _$$StationErrorImplCopyWith(
          _$StationErrorImpl value, $Res Function(_$StationErrorImpl) then) =
      __$$StationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$StationErrorImplCopyWithImpl<$Res>
    extends _$StationStateCopyWithImpl<$Res, _$StationErrorImpl>
    implements _$$StationErrorImplCopyWith<$Res> {
  __$$StationErrorImplCopyWithImpl(
      _$StationErrorImpl _value, $Res Function(_$StationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StationErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StationErrorImpl implements StationError {
  const _$StationErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'StationState.error(error: $error)';
  }

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationErrorImplCopyWith<_$StationErrorImpl> get copyWith =>
      __$$StationErrorImplCopyWithImpl<_$StationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? screenLoading,
    TResult? Function()? nothing,
    TResult? Function(List<Station> data, bool? isFinish)? logged,
    TResult? Function(Station? data)? detailLogged,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? screenLoading,
    TResult Function()? nothing,
    TResult Function(List<Station> data, bool? isFinish)? logged,
    TResult Function(Station? data)? detailLogged,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class StationError implements StationState {
  const factory StationError({final String? error}) = _$StationErrorImpl;

  String? get error;

  /// Create a copy of StationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationErrorImplCopyWith<_$StationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
