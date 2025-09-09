import 'package:lanes_planes_flutter/features/departures/data/data.dart';
import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';

class DeparturesRepositoryImpl implements DeparturesRepository {
  DeparturesRepositoryImpl({required this.remote});

  final DeparturesDataSource remote;

  @override
  Future<List<Departure>> getDepartures({
    required String stopId,
    required DateTime when,
  }) {
    return remote.getDepartures(stopId: stopId, when: when.toIso8601String());
  }
}
