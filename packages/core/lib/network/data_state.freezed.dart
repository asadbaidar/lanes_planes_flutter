// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataState<T> {
  String? get key;
  T? get value;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<T, DataState<T>> get copyWith =>
      _$DataStateCopyWithImpl<T, DataState<T>>(
          this as DataState<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataState<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'DataState<$T>(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) _then) =
      _$DataStateCopyWithImpl;
  @useResult
  $Res call({String? key, T? value});
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._self, this._then);

  final DataState<T> _self;
  final $Res Function(DataState<T>) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DataState].
extension DataStatePatterns<T> on DataState<T> {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case FailureState() when failure != null:
        return failure(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial(_that);
      case LoadingState():
        return loading(_that);
      case SuccessState():
        return success(_that);
      case FailureState():
        return failure(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case FailureState() when failure != null:
        return failure(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? key, T? value)? initial,
    TResult Function(String? key, T? value)? loading,
    TResult Function(String? key, T? value)? success,
    TResult Function(String? key, T? value, dynamic error)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that.key, _that.value);
      case LoadingState() when loading != null:
        return loading(_that.key, _that.value);
      case SuccessState() when success != null:
        return success(_that.key, _that.value);
      case FailureState() when failure != null:
        return failure(_that.key, _that.value, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? key, T? value) initial,
    required TResult Function(String? key, T? value) loading,
    required TResult Function(String? key, T? value) success,
    required TResult Function(String? key, T? value, dynamic error) failure,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial(_that.key, _that.value);
      case LoadingState():
        return loading(_that.key, _that.value);
      case SuccessState():
        return success(_that.key, _that.value);
      case FailureState():
        return failure(_that.key, _that.value, _that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? key, T? value)? initial,
    TResult? Function(String? key, T? value)? loading,
    TResult? Function(String? key, T? value)? success,
    TResult? Function(String? key, T? value, dynamic error)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that.key, _that.value);
      case LoadingState() when loading != null:
        return loading(_that.key, _that.value);
      case SuccessState() when success != null:
        return success(_that.key, _that.value);
      case FailureState() when failure != null:
        return failure(_that.key, _that.value, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialState<T> implements DataState<T> {
  const InitialState({this.key, this.value});

  @override
  final String? key;
  @override
  final T? value;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitialStateCopyWith<T, InitialState<T>> get copyWith =>
      _$InitialStateCopyWithImpl<T, InitialState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialState<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'DataState<$T>.initial(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class $InitialStateCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory $InitialStateCopyWith(
          InitialState<T> value, $Res Function(InitialState<T>) _then) =
      _$InitialStateCopyWithImpl;
  @override
  @useResult
  $Res call({String? key, T? value});
}

/// @nodoc
class _$InitialStateCopyWithImpl<T, $Res>
    implements $InitialStateCopyWith<T, $Res> {
  _$InitialStateCopyWithImpl(this._self, this._then);

  final InitialState<T> _self;
  final $Res Function(InitialState<T>) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(InitialState<T>(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class LoadingState<T> implements DataState<T> {
  const LoadingState({this.key, this.value});

  @override
  final String? key;
  @override
  final T? value;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<T, LoadingState<T>> get copyWith =>
      _$LoadingStateCopyWithImpl<T, LoadingState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingState<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'DataState<$T>.loading(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) _then) =
      _$LoadingStateCopyWithImpl;
  @override
  @useResult
  $Res call({String? key, T? value});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState<T> _self;
  final $Res Function(LoadingState<T>) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(LoadingState<T>(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class SuccessState<T> implements DataState<T> {
  const SuccessState({this.key, this.value});

  @override
  final String? key;
  @override
  final T? value;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessStateCopyWith<T, SuccessState<T>> get copyWith =>
      _$SuccessStateCopyWithImpl<T, SuccessState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessState<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'DataState<$T>.success(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory $SuccessStateCopyWith(
          SuccessState<T> value, $Res Function(SuccessState<T>) _then) =
      _$SuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call({String? key, T? value});
}

/// @nodoc
class _$SuccessStateCopyWithImpl<T, $Res>
    implements $SuccessStateCopyWith<T, $Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState<T> _self;
  final $Res Function(SuccessState<T>) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(SuccessState<T>(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class FailureState<T> implements DataState<T> {
  const FailureState({this.key, this.value, this.error});

  @override
  final String? key;
  @override
  final T? value;
  final dynamic error;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureStateCopyWith<T, FailureState<T>> get copyWith =>
      _$FailureStateCopyWithImpl<T, FailureState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureState<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'DataState<$T>.failure(key: $key, value: $value, error: $error)';
  }
}

/// @nodoc
abstract mixin class $FailureStateCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory $FailureStateCopyWith(
          FailureState<T> value, $Res Function(FailureState<T>) _then) =
      _$FailureStateCopyWithImpl;
  @override
  @useResult
  $Res call({String? key, T? value, dynamic error});
}

/// @nodoc
class _$FailureStateCopyWithImpl<T, $Res>
    implements $FailureStateCopyWith<T, $Res> {
  _$FailureStateCopyWithImpl(this._self, this._then);

  final FailureState<T> _self;
  final $Res Function(FailureState<T>) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(FailureState<T>(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
