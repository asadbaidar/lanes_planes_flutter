// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stop _$StopFromJson(Map<String, dynamic> json) => _Stop(
  id: json['id'] as String,
  name: json['name'] as String,
  products: Products.fromJson(json['products'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StopToJson(_Stop instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'products': instance.products,
};
