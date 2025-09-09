import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/core.dart';
import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';
import 'package:lanes_planes_flutter/features/search/domain/domain.dart';
import 'package:localization/localization.dart';

part 'departure.freezed.dart';
part 'departure.g.dart';

@freezed
abstract class Departure with _$Departure {
  const factory Departure({
    required String tripId,
    required Stop stop,
    DateTime? when,
    required DateTime plannedWhen,
    int? delay,
    String? platform,
    String? plannedPlatform,
    required String direction,
    required Line line,
    bool? cancelled,
  }) = _Departure;

  factory Departure.fromJson(Map<String, dynamic> json) =>
      _$DepartureFromJson(json);
}


extension DepartureX on Departure {
  String get platformText => platform ?? plannedPlatform ?? '';

  String from(AppLocalization l10n) =>
      stop.name +
      (platformText.isEmpty ? '' : ' • ${l10n.platform(platformText)}');

  String get whenText => (when ?? plannedWhen).formatHm;

  String status(AppLocalization l10n) {
    if (isCancelled) {
      return l10n.cancelled;
    } else if (isDelayed) {
      return l10n.delayed;
    } else {
      return l10n.onTime;
    }
  }

  bool get isDelayed => (delay ?? 0) > 0;

  bool get isCancelled => cancelled ?? false;

  bool get isOnTime => !isCancelled && !isDelayed;
}
