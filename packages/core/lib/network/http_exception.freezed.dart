// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HttpException {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HttpException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpException()';
  }
}

/// @nodoc
class $HttpExceptionCopyWith<$Res> {
  $HttpExceptionCopyWith(HttpException _, $Res Function(HttpException) __);
}

/// Adds pattern-matching-related methods to [HttpException].
extension HttpExceptionPatterns on HttpException {
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
    TResult Function(NotFoundException value)? notFound,
    TResult Function(NoDataException value)? noData,
    TResult Function(TypeMismatchException value)? typeMismatch,
    TResult Function(ServerException value)? server,
    TResult Function(NoInternetException value)? noInternet,
    TResult Function(BadRequestException value)? badRequest,
    TResult Function(UnauthorisedException value)? unauthorised,
    TResult Function(TimeoutException value)? timeout,
    TResult Function(CancelException value)? cancel,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException() when notFound != null:
        return notFound(_that);
      case NoDataException() when noData != null:
        return noData(_that);
      case TypeMismatchException() when typeMismatch != null:
        return typeMismatch(_that);
      case ServerException() when server != null:
        return server(_that);
      case NoInternetException() when noInternet != null:
        return noInternet(_that);
      case BadRequestException() when badRequest != null:
        return badRequest(_that);
      case UnauthorisedException() when unauthorised != null:
        return unauthorised(_that);
      case TimeoutException() when timeout != null:
        return timeout(_that);
      case CancelException() when cancel != null:
        return cancel(_that);
      case UnknownException() when unknown != null:
        return unknown(_that);
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
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(NoDataException value) noData,
    required TResult Function(TypeMismatchException value) typeMismatch,
    required TResult Function(ServerException value) server,
    required TResult Function(NoInternetException value) noInternet,
    required TResult Function(BadRequestException value) badRequest,
    required TResult Function(UnauthorisedException value) unauthorised,
    required TResult Function(TimeoutException value) timeout,
    required TResult Function(CancelException value) cancel,
    required TResult Function(UnknownException value) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException():
        return notFound(_that);
      case NoDataException():
        return noData(_that);
      case TypeMismatchException():
        return typeMismatch(_that);
      case ServerException():
        return server(_that);
      case NoInternetException():
        return noInternet(_that);
      case BadRequestException():
        return badRequest(_that);
      case UnauthorisedException():
        return unauthorised(_that);
      case TimeoutException():
        return timeout(_that);
      case CancelException():
        return cancel(_that);
      case UnknownException():
        return unknown(_that);
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
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(NoDataException value)? noData,
    TResult? Function(TypeMismatchException value)? typeMismatch,
    TResult? Function(ServerException value)? server,
    TResult? Function(NoInternetException value)? noInternet,
    TResult? Function(BadRequestException value)? badRequest,
    TResult? Function(UnauthorisedException value)? unauthorised,
    TResult? Function(TimeoutException value)? timeout,
    TResult? Function(CancelException value)? cancel,
    TResult? Function(UnknownException value)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException() when notFound != null:
        return notFound(_that);
      case NoDataException() when noData != null:
        return noData(_that);
      case TypeMismatchException() when typeMismatch != null:
        return typeMismatch(_that);
      case ServerException() when server != null:
        return server(_that);
      case NoInternetException() when noInternet != null:
        return noInternet(_that);
      case BadRequestException() when badRequest != null:
        return badRequest(_that);
      case UnauthorisedException() when unauthorised != null:
        return unauthorised(_that);
      case TimeoutException() when timeout != null:
        return timeout(_that);
      case CancelException() when cancel != null:
        return cancel(_that);
      case UnknownException() when unknown != null:
        return unknown(_that);
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
    TResult Function(String? message)? notFound,
    TResult Function(int code, String? message)? noData,
    TResult Function(String? message)? typeMismatch,
    TResult Function(int code, String? message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? badRequest,
    TResult Function(int code, String? message)? unauthorised,
    TResult Function()? timeout,
    TResult Function()? cancel,
    TResult Function(int? code, String? message)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException() when notFound != null:
        return notFound(_that.message);
      case NoDataException() when noData != null:
        return noData(_that.code, _that.message);
      case TypeMismatchException() when typeMismatch != null:
        return typeMismatch(_that.message);
      case ServerException() when server != null:
        return server(_that.code, _that.message);
      case NoInternetException() when noInternet != null:
        return noInternet();
      case BadRequestException() when badRequest != null:
        return badRequest(_that.message);
      case UnauthorisedException() when unauthorised != null:
        return unauthorised(_that.code, _that.message);
      case TimeoutException() when timeout != null:
        return timeout();
      case CancelException() when cancel != null:
        return cancel();
      case UnknownException() when unknown != null:
        return unknown(_that.code, _that.message);
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
    required TResult Function(String? message) notFound,
    required TResult Function(int code, String? message) noData,
    required TResult Function(String? message) typeMismatch,
    required TResult Function(int code, String? message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) badRequest,
    required TResult Function(int code, String? message) unauthorised,
    required TResult Function() timeout,
    required TResult Function() cancel,
    required TResult Function(int? code, String? message) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException():
        return notFound(_that.message);
      case NoDataException():
        return noData(_that.code, _that.message);
      case TypeMismatchException():
        return typeMismatch(_that.message);
      case ServerException():
        return server(_that.code, _that.message);
      case NoInternetException():
        return noInternet();
      case BadRequestException():
        return badRequest(_that.message);
      case UnauthorisedException():
        return unauthorised(_that.code, _that.message);
      case TimeoutException():
        return timeout();
      case CancelException():
        return cancel();
      case UnknownException():
        return unknown(_that.code, _that.message);
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
    TResult? Function(String? message)? notFound,
    TResult? Function(int code, String? message)? noData,
    TResult? Function(String? message)? typeMismatch,
    TResult? Function(int code, String? message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? badRequest,
    TResult? Function(int code, String? message)? unauthorised,
    TResult? Function()? timeout,
    TResult? Function()? cancel,
    TResult? Function(int? code, String? message)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case NotFoundException() when notFound != null:
        return notFound(_that.message);
      case NoDataException() when noData != null:
        return noData(_that.code, _that.message);
      case TypeMismatchException() when typeMismatch != null:
        return typeMismatch(_that.message);
      case ServerException() when server != null:
        return server(_that.code, _that.message);
      case NoInternetException() when noInternet != null:
        return noInternet();
      case BadRequestException() when badRequest != null:
        return badRequest(_that.message);
      case UnauthorisedException() when unauthorised != null:
        return unauthorised(_that.code, _that.message);
      case TimeoutException() when timeout != null:
        return timeout();
      case CancelException() when cancel != null:
        return cancel();
      case UnknownException() when unknown != null:
        return unknown(_that.code, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class NotFoundException implements HttpException {
  const NotFoundException([this.message]);

  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotFoundExceptionCopyWith<NotFoundException> get copyWith =>
      _$NotFoundExceptionCopyWithImpl<NotFoundException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFoundException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HttpException.notFound(message: $message)';
  }
}

/// @nodoc
abstract mixin class $NotFoundExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $NotFoundExceptionCopyWith(
          NotFoundException value, $Res Function(NotFoundException) _then) =
      _$NotFoundExceptionCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$NotFoundExceptionCopyWithImpl<$Res>
    implements $NotFoundExceptionCopyWith<$Res> {
  _$NotFoundExceptionCopyWithImpl(this._self, this._then);

  final NotFoundException _self;
  final $Res Function(NotFoundException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotFoundException(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NoDataException implements HttpException {
  const NoDataException(this.code, [this.message]);

  final int code;
  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoDataExceptionCopyWith<NoDataException> get copyWith =>
      _$NoDataExceptionCopyWithImpl<NoDataException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoDataException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'HttpException.noData(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $NoDataExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $NoDataExceptionCopyWith(
          NoDataException value, $Res Function(NoDataException) _then) =
      _$NoDataExceptionCopyWithImpl;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$NoDataExceptionCopyWithImpl<$Res>
    implements $NoDataExceptionCopyWith<$Res> {
  _$NoDataExceptionCopyWithImpl(this._self, this._then);

  final NoDataException _self;
  final $Res Function(NoDataException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(NoDataException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TypeMismatchException implements HttpException {
  const TypeMismatchException([this.message]);

  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeMismatchExceptionCopyWith<TypeMismatchException> get copyWith =>
      _$TypeMismatchExceptionCopyWithImpl<TypeMismatchException>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeMismatchException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HttpException.typeMismatch(message: $message)';
  }
}

/// @nodoc
abstract mixin class $TypeMismatchExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $TypeMismatchExceptionCopyWith(TypeMismatchException value,
          $Res Function(TypeMismatchException) _then) =
      _$TypeMismatchExceptionCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$TypeMismatchExceptionCopyWithImpl<$Res>
    implements $TypeMismatchExceptionCopyWith<$Res> {
  _$TypeMismatchExceptionCopyWithImpl(this._self, this._then);

  final TypeMismatchException _self;
  final $Res Function(TypeMismatchException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TypeMismatchException(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ServerException implements HttpException {
  const ServerException(this.code, [this.message]);

  final int code;
  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'HttpException.server(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ServerExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) _then) =
      _$ServerExceptionCopyWithImpl;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._self, this._then);

  final ServerException _self;
  final $Res Function(ServerException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(ServerException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NoInternetException implements HttpException {
  const NoInternetException();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoInternetException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpException.noInternet()';
  }
}

/// @nodoc

class BadRequestException implements HttpException {
  const BadRequestException([this.message]);

  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BadRequestExceptionCopyWith<BadRequestException> get copyWith =>
      _$BadRequestExceptionCopyWithImpl<BadRequestException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadRequestException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HttpException.badRequest(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BadRequestExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $BadRequestExceptionCopyWith(
          BadRequestException value, $Res Function(BadRequestException) _then) =
      _$BadRequestExceptionCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$BadRequestExceptionCopyWithImpl<$Res>
    implements $BadRequestExceptionCopyWith<$Res> {
  _$BadRequestExceptionCopyWithImpl(this._self, this._then);

  final BadRequestException _self;
  final $Res Function(BadRequestException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BadRequestException(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class UnauthorisedException implements HttpException {
  const UnauthorisedException(this.code, [this.message]);

  final int code;
  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnauthorisedExceptionCopyWith<UnauthorisedException> get copyWith =>
      _$UnauthorisedExceptionCopyWithImpl<UnauthorisedException>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnauthorisedException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'HttpException.unauthorised(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnauthorisedExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $UnauthorisedExceptionCopyWith(UnauthorisedException value,
          $Res Function(UnauthorisedException) _then) =
      _$UnauthorisedExceptionCopyWithImpl;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$UnauthorisedExceptionCopyWithImpl<$Res>
    implements $UnauthorisedExceptionCopyWith<$Res> {
  _$UnauthorisedExceptionCopyWithImpl(this._self, this._then);

  final UnauthorisedException _self;
  final $Res Function(UnauthorisedException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(UnauthorisedException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TimeoutException implements HttpException {
  const TimeoutException();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TimeoutException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpException.timeout()';
  }
}

/// @nodoc

class CancelException implements HttpException {
  const CancelException();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpException.cancel()';
  }
}

/// @nodoc

class UnknownException implements HttpException {
  const UnknownException([this.code, this.message]);

  final int? code;
  final String? message;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownExceptionCopyWith<UnknownException> get copyWith =>
      _$UnknownExceptionCopyWithImpl<UnknownException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'HttpException.unknown(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnknownExceptionCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory $UnknownExceptionCopyWith(
          UnknownException value, $Res Function(UnknownException) _then) =
      _$UnknownExceptionCopyWithImpl;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class _$UnknownExceptionCopyWithImpl<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  _$UnknownExceptionCopyWithImpl(this._self, this._then);

  final UnknownException _self;
  final $Res Function(UnknownException) _then;

  /// Create a copy of HttpException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(UnknownException(
      freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
