// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'departure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Departure _$DepartureFromJson(Map<String, dynamic> json) => _Departure(
  tripId: json['tripId'] as String,
  stop: Stop.fromJson(json['stop'] as Map<String, dynamic>),
  when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
  plannedWhen: DateTime.parse(json['plannedWhen'] as String),
  delay: (json['delay'] as num?)?.toInt(),
  platform: json['platform'] as String?,
  plannedPlatform: json['plannedPlatform'] as String?,
  direction: json['direction'] as String,
  line: Line.fromJson(json['line'] as Map<String, dynamic>),
  cancelled: json['cancelled'] as bool?,
);

Map<String, dynamic> _$DepartureToJson(_Departure instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'stop': instance.stop,
      'when': instance.when?.toIso8601String(),
      'plannedWhen': instance.plannedWhen.toIso8601String(),
      'delay': instance.delay,
      'platform': instance.platform,
      'plannedPlatform': instance.plannedPlatform,
      'direction': instance.direction,
      'line': instance.line,
      'cancelled': instance.cancelled,
    };
