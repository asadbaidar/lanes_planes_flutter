import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanes_planes_flutter/features/search/domain/domain.dart';

part 'stop.freezed.dart';
part 'stop.g.dart';

@freezed
abstract class Stop with _$Stop {
  const factory Stop({
    required String id,
    required String name,
    required Products products,
  }) = _Stop;

  factory Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);
}
