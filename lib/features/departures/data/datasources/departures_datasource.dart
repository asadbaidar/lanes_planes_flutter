import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';

abstract class DeparturesDataSource {
  Future<List<Departure>> getDepartures({
    required String stopId,
    required String when,
  });
}
