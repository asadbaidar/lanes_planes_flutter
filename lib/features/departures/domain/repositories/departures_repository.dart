import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';

abstract class DeparturesRepository {
  Future<List<Departure>> getDepartures({
    required String stopId,
    required DateTime when,
  });
}
