// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Departure {

 String get tripId; Stop get stop; DateTime? get when; DateTime get plannedWhen; int? get delay; String? get platform; String? get plannedPlatform; String get direction; Line get line; bool? get cancelled;
/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartureCopyWith<Departure> get copyWith => _$DepartureCopyWithImpl<Departure>(this as Departure, _$identity);

  /// Serializes this Departure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Departure&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.when, when) || other.when == when)&&(identical(other.plannedWhen, plannedWhen) || other.plannedWhen == plannedWhen)&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.plannedPlatform, plannedPlatform) || other.plannedPlatform == plannedPlatform)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.line, line) || other.line == line)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripId,stop,when,plannedWhen,delay,platform,plannedPlatform,direction,line,cancelled);

@override
String toString() {
  return 'Departure(tripId: $tripId, stop: $stop, when: $when, plannedWhen: $plannedWhen, delay: $delay, platform: $platform, plannedPlatform: $plannedPlatform, direction: $direction, line: $line, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class $DepartureCopyWith<$Res>  {
  factory $DepartureCopyWith(Departure value, $Res Function(Departure) _then) = _$DepartureCopyWithImpl;
@useResult
$Res call({
 String tripId, Stop stop, DateTime? when, DateTime plannedWhen, int? delay, String? platform, String? plannedPlatform, String direction, Line line, bool? cancelled
});


$StopCopyWith<$Res> get stop;$LineCopyWith<$Res> get line;

}
/// @nodoc
class _$DepartureCopyWithImpl<$Res>
    implements $DepartureCopyWith<$Res> {
  _$DepartureCopyWithImpl(this._self, this._then);

  final Departure _self;
  final $Res Function(Departure) _then;

/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? stop = null,Object? when = freezed,Object? plannedWhen = null,Object? delay = freezed,Object? platform = freezed,Object? plannedPlatform = freezed,Object? direction = null,Object? line = null,Object? cancelled = freezed,}) {
  return _then(_self.copyWith(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,stop: null == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as Stop,when: freezed == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as DateTime?,plannedWhen: null == plannedWhen ? _self.plannedWhen : plannedWhen // ignore: cast_nullable_to_non_nullable
as DateTime,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as int?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,plannedPlatform: freezed == plannedPlatform ? _self.plannedPlatform : plannedPlatform // ignore: cast_nullable_to_non_nullable
as String?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,line: null == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as Line,cancelled: freezed == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopCopyWith<$Res> get stop {
  
  return $StopCopyWith<$Res>(_self.stop, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LineCopyWith<$Res> get line {
  
  return $LineCopyWith<$Res>(_self.line, (value) {
    return _then(_self.copyWith(line: value));
  });
}
}


/// Adds pattern-matching-related methods to [Departure].
extension DeparturePatterns on Departure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Departure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Departure() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Departure value)  $default,){
final _that = this;
switch (_that) {
case _Departure():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Departure value)?  $default,){
final _that = this;
switch (_that) {
case _Departure() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tripId,  Stop stop,  DateTime? when,  DateTime plannedWhen,  int? delay,  String? platform,  String? plannedPlatform,  String direction,  Line line,  bool? cancelled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Departure() when $default != null:
return $default(_that.tripId,_that.stop,_that.when,_that.plannedWhen,_that.delay,_that.platform,_that.plannedPlatform,_that.direction,_that.line,_that.cancelled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tripId,  Stop stop,  DateTime? when,  DateTime plannedWhen,  int? delay,  String? platform,  String? plannedPlatform,  String direction,  Line line,  bool? cancelled)  $default,) {final _that = this;
switch (_that) {
case _Departure():
return $default(_that.tripId,_that.stop,_that.when,_that.plannedWhen,_that.delay,_that.platform,_that.plannedPlatform,_that.direction,_that.line,_that.cancelled);case _:
  throw StateError('Unexpected subclass');

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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tripId,  Stop stop,  DateTime? when,  DateTime plannedWhen,  int? delay,  String? platform,  String? plannedPlatform,  String direction,  Line line,  bool? cancelled)?  $default,) {final _that = this;
switch (_that) {
case _Departure() when $default != null:
return $default(_that.tripId,_that.stop,_that.when,_that.plannedWhen,_that.delay,_that.platform,_that.plannedPlatform,_that.direction,_that.line,_that.cancelled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Departure implements Departure {
  const _Departure({required this.tripId, required this.stop, this.when, required this.plannedWhen, this.delay, this.platform, this.plannedPlatform, required this.direction, required this.line, this.cancelled});
  factory _Departure.fromJson(Map<String, dynamic> json) => _$DepartureFromJson(json);

@override final  String tripId;
@override final  Stop stop;
@override final  DateTime? when;
@override final  DateTime plannedWhen;
@override final  int? delay;
@override final  String? platform;
@override final  String? plannedPlatform;
@override final  String direction;
@override final  Line line;
@override final  bool? cancelled;

/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartureCopyWith<_Departure> get copyWith => __$DepartureCopyWithImpl<_Departure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Departure&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.when, when) || other.when == when)&&(identical(other.plannedWhen, plannedWhen) || other.plannedWhen == plannedWhen)&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.plannedPlatform, plannedPlatform) || other.plannedPlatform == plannedPlatform)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.line, line) || other.line == line)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripId,stop,when,plannedWhen,delay,platform,plannedPlatform,direction,line,cancelled);

@override
String toString() {
  return 'Departure(tripId: $tripId, stop: $stop, when: $when, plannedWhen: $plannedWhen, delay: $delay, platform: $platform, plannedPlatform: $plannedPlatform, direction: $direction, line: $line, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class _$DepartureCopyWith<$Res> implements $DepartureCopyWith<$Res> {
  factory _$DepartureCopyWith(_Departure value, $Res Function(_Departure) _then) = __$DepartureCopyWithImpl;
@override @useResult
$Res call({
 String tripId, Stop stop, DateTime? when, DateTime plannedWhen, int? delay, String? platform, String? plannedPlatform, String direction, Line line, bool? cancelled
});


@override $StopCopyWith<$Res> get stop;@override $LineCopyWith<$Res> get line;

}
/// @nodoc
class __$DepartureCopyWithImpl<$Res>
    implements _$DepartureCopyWith<$Res> {
  __$DepartureCopyWithImpl(this._self, this._then);

  final _Departure _self;
  final $Res Function(_Departure) _then;

/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? stop = null,Object? when = freezed,Object? plannedWhen = null,Object? delay = freezed,Object? platform = freezed,Object? plannedPlatform = freezed,Object? direction = null,Object? line = null,Object? cancelled = freezed,}) {
  return _then(_Departure(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,stop: null == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as Stop,when: freezed == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as DateTime?,plannedWhen: null == plannedWhen ? _self.plannedWhen : plannedWhen // ignore: cast_nullable_to_non_nullable
as DateTime,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as int?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,plannedPlatform: freezed == plannedPlatform ? _self.plannedPlatform : plannedPlatform // ignore: cast_nullable_to_non_nullable
as String?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,line: null == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as Line,cancelled: freezed == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopCopyWith<$Res> get stop {
  
  return $StopCopyWith<$Res>(_self.stop, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of Departure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LineCopyWith<$Res> get line {
  
  return $LineCopyWith<$Res>(_self.line, (value) {
    return _then(_self.copyWith(line: value));
  });
}
}

// dart format on
