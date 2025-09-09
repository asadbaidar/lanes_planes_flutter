// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Line _$LineFromJson(Map<String, dynamic> json) => _Line(
  id: json['id'] as String,
  name: json['name'] as String,
  productName: json['productName'] as String?,
  product: $enumDecodeNullable(_$LineProductEnumMap, json['product']),
);

Map<String, dynamic> _$LineToJson(_Line instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'productName': instance.productName,
  'product': _$LineProductEnumMap[instance.product],
};

const _$LineProductEnumMap = {
  LineProduct.suburban: 'suburban',
  LineProduct.subway: 'subway',
  LineProduct.tram: 'tram',
  LineProduct.bus: 'bus',
  LineProduct.ferry: 'ferry',
  LineProduct.express: 'express',
  LineProduct.regional: 'regional',
};
