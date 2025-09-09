// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Products {

 bool? get suburban; bool? get subway; bool? get tram; bool? get bus; bool? get ferry; bool? get express; bool? get regional;
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsCopyWith<Products> get copyWith => _$ProductsCopyWithImpl<Products>(this as Products, _$identity);

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Products&&(identical(other.suburban, suburban) || other.suburban == suburban)&&(identical(other.subway, subway) || other.subway == subway)&&(identical(other.tram, tram) || other.tram == tram)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.ferry, ferry) || other.ferry == ferry)&&(identical(other.express, express) || other.express == express)&&(identical(other.regional, regional) || other.regional == regional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suburban,subway,tram,bus,ferry,express,regional);

@override
String toString() {
  return 'Products(suburban: $suburban, subway: $subway, tram: $tram, bus: $bus, ferry: $ferry, express: $express, regional: $regional)';
}


}

/// @nodoc
abstract mixin class $ProductsCopyWith<$Res>  {
  factory $ProductsCopyWith(Products value, $Res Function(Products) _then) = _$ProductsCopyWithImpl;
@useResult
$Res call({
 bool? suburban, bool? subway, bool? tram, bool? bus, bool? ferry, bool? express, bool? regional
});




}
/// @nodoc
class _$ProductsCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._self, this._then);

  final Products _self;
  final $Res Function(Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suburban = freezed,Object? subway = freezed,Object? tram = freezed,Object? bus = freezed,Object? ferry = freezed,Object? express = freezed,Object? regional = freezed,}) {
  return _then(_self.copyWith(
suburban: freezed == suburban ? _self.suburban : suburban // ignore: cast_nullable_to_non_nullable
as bool?,subway: freezed == subway ? _self.subway : subway // ignore: cast_nullable_to_non_nullable
as bool?,tram: freezed == tram ? _self.tram : tram // ignore: cast_nullable_to_non_nullable
as bool?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as bool?,ferry: freezed == ferry ? _self.ferry : ferry // ignore: cast_nullable_to_non_nullable
as bool?,express: freezed == express ? _self.express : express // ignore: cast_nullable_to_non_nullable
as bool?,regional: freezed == regional ? _self.regional : regional // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Products].
extension ProductsPatterns on Products {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Products value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Products() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Products value)  $default,){
final _that = this;
switch (_that) {
case _Products():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Products value)?  $default,){
final _that = this;
switch (_that) {
case _Products() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? suburban,  bool? subway,  bool? tram,  bool? bus,  bool? ferry,  bool? express,  bool? regional)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.suburban,_that.subway,_that.tram,_that.bus,_that.ferry,_that.express,_that.regional);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? suburban,  bool? subway,  bool? tram,  bool? bus,  bool? ferry,  bool? express,  bool? regional)  $default,) {final _that = this;
switch (_that) {
case _Products():
return $default(_that.suburban,_that.subway,_that.tram,_that.bus,_that.ferry,_that.express,_that.regional);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? suburban,  bool? subway,  bool? tram,  bool? bus,  bool? ferry,  bool? express,  bool? regional)?  $default,) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.suburban,_that.subway,_that.tram,_that.bus,_that.ferry,_that.express,_that.regional);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Products implements Products {
  const _Products({this.suburban, this.subway, this.tram, this.bus, this.ferry, this.express, this.regional});
  factory _Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);

@override final  bool? suburban;
@override final  bool? subway;
@override final  bool? tram;
@override final  bool? bus;
@override final  bool? ferry;
@override final  bool? express;
@override final  bool? regional;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsCopyWith<_Products> get copyWith => __$ProductsCopyWithImpl<_Products>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Products&&(identical(other.suburban, suburban) || other.suburban == suburban)&&(identical(other.subway, subway) || other.subway == subway)&&(identical(other.tram, tram) || other.tram == tram)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.ferry, ferry) || other.ferry == ferry)&&(identical(other.express, express) || other.express == express)&&(identical(other.regional, regional) || other.regional == regional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suburban,subway,tram,bus,ferry,express,regional);

@override
String toString() {
  return 'Products(suburban: $suburban, subway: $subway, tram: $tram, bus: $bus, ferry: $ferry, express: $express, regional: $regional)';
}


}

/// @nodoc
abstract mixin class _$ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$ProductsCopyWith(_Products value, $Res Function(_Products) _then) = __$ProductsCopyWithImpl;
@override @useResult
$Res call({
 bool? suburban, bool? subway, bool? tram, bool? bus, bool? ferry, bool? express, bool? regional
});




}
/// @nodoc
class __$ProductsCopyWithImpl<$Res>
    implements _$ProductsCopyWith<$Res> {
  __$ProductsCopyWithImpl(this._self, this._then);

  final _Products _self;
  final $Res Function(_Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suburban = freezed,Object? subway = freezed,Object? tram = freezed,Object? bus = freezed,Object? ferry = freezed,Object? express = freezed,Object? regional = freezed,}) {
  return _then(_Products(
suburban: freezed == suburban ? _self.suburban : suburban // ignore: cast_nullable_to_non_nullable
as bool?,subway: freezed == subway ? _self.subway : subway // ignore: cast_nullable_to_non_nullable
as bool?,tram: freezed == tram ? _self.tram : tram // ignore: cast_nullable_to_non_nullable
as bool?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as bool?,ferry: freezed == ferry ? _self.ferry : ferry // ignore: cast_nullable_to_non_nullable
as bool?,express: freezed == express ? _self.express : express // ignore: cast_nullable_to_non_nullable
as bool?,regional: freezed == regional ? _self.regional : regional // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
