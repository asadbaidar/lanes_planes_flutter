import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';

class GetDepartures {
  GetDepartures(this.repository);

  final DeparturesRepository repository;

  Future<List<Departure>> call(String stopId) {
    return repository.getDepartures(stopId: stopId, when: DateTime.now());
  }
}
