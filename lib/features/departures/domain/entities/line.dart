import 'package:freezed_annotation/freezed_annotation.dart';

part 'line.freezed.dart';
part 'line.g.dart';

@freezed
abstract class Line with _$Line {
  const factory Line({
    required String id,
    required String name,
    String? productName,
    LineProduct? product,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);
}

enum LineProduct { suburban, subway, tram, bus, ferry, express, regional }
