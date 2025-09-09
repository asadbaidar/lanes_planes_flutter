// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departures_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeparturesEvent {

 String get stopId;
/// Create a copy of DeparturesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeparturesEventCopyWith<DeparturesEvent> get copyWith => _$DeparturesEventCopyWithImpl<DeparturesEvent>(this as DeparturesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeparturesEvent&&(identical(other.stopId, stopId) || other.stopId == stopId));
}


@override
int get hashCode => Object.hash(runtimeType,stopId);

@override
String toString() {
  return 'DeparturesEvent(stopId: $stopId)';
}


}

/// @nodoc
abstract mixin class $DeparturesEventCopyWith<$Res>  {
  factory $DeparturesEventCopyWith(DeparturesEvent value, $Res Function(DeparturesEvent) _then) = _$DeparturesEventCopyWithImpl;
@useResult
$Res call({
 String stopId
});




}
/// @nodoc
class _$DeparturesEventCopyWithImpl<$Res>
    implements $DeparturesEventCopyWith<$Res> {
  _$DeparturesEventCopyWithImpl(this._self, this._then);

  final DeparturesEvent _self;
  final $Res Function(DeparturesEvent) _then;

/// Create a copy of DeparturesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopId = null,}) {
  return _then(_self.copyWith(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeparturesEvent].
extension DeparturesEventPatterns on DeparturesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadDepartures value)?  loadDepartures,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadDepartures() when loadDepartures != null:
return loadDepartures(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadDepartures value)  loadDepartures,}){
final _that = this;
switch (_that) {
case LoadDepartures():
return loadDepartures(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadDepartures value)?  loadDepartures,}){
final _that = this;
switch (_that) {
case LoadDepartures() when loadDepartures != null:
return loadDepartures(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String stopId)?  loadDepartures,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadDepartures() when loadDepartures != null:
return loadDepartures(_that.stopId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String stopId)  loadDepartures,}) {final _that = this;
switch (_that) {
case LoadDepartures():
return loadDepartures(_that.stopId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String stopId)?  loadDepartures,}) {final _that = this;
switch (_that) {
case LoadDepartures() when loadDepartures != null:
return loadDepartures(_that.stopId);case _:
  return null;

}
}

}

/// @nodoc


class LoadDepartures implements DeparturesEvent {
  const LoadDepartures(this.stopId);
  

@override final  String stopId;

/// Create a copy of DeparturesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadDeparturesCopyWith<LoadDepartures> get copyWith => _$LoadDeparturesCopyWithImpl<LoadDepartures>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDepartures&&(identical(other.stopId, stopId) || other.stopId == stopId));
}


@override
int get hashCode => Object.hash(runtimeType,stopId);

@override
String toString() {
  return 'DeparturesEvent.loadDepartures(stopId: $stopId)';
}


}

/// @nodoc
abstract mixin class $LoadDeparturesCopyWith<$Res> implements $DeparturesEventCopyWith<$Res> {
  factory $LoadDeparturesCopyWith(LoadDepartures value, $Res Function(LoadDepartures) _then) = _$LoadDeparturesCopyWithImpl;
@override @useResult
$Res call({
 String stopId
});




}
/// @nodoc
class _$LoadDeparturesCopyWithImpl<$Res>
    implements $LoadDeparturesCopyWith<$Res> {
  _$LoadDeparturesCopyWithImpl(this._self, this._then);

  final LoadDepartures _self;
  final $Res Function(LoadDepartures) _then;

/// Create a copy of DeparturesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopId = null,}) {
  return _then(LoadDepartures(
null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
