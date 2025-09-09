import 'package:freezed_annotation/freezed_annotation.dart';

part 'departures_event.freezed.dart';

@freezed
sealed class DeparturesEvent with _$DeparturesEvent {
  const factory DeparturesEvent.loadDepartures(String stopId) = LoadDepartures;
}
