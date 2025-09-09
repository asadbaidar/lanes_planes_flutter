// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Products _$ProductsFromJson(Map<String, dynamic> json) => _Products(
  suburban: json['suburban'] as bool?,
  subway: json['subway'] as bool?,
  tram: json['tram'] as bool?,
  bus: json['bus'] as bool?,
  ferry: json['ferry'] as bool?,
  express: json['express'] as bool?,
  regional: json['regional'] as bool?,
);

Map<String, dynamic> _$ProductsToJson(_Products instance) => <String, dynamic>{
  'suburban': instance.suburban,
  'subway': instance.subway,
  'tram': instance.tram,
  'bus': instance.bus,
  'ferry': instance.ferry,
  'express': instance.express,
  'regional': instance.regional,
};
