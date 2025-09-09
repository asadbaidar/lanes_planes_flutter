import 'package:core/core.dart';
import 'package:lanes_planes_flutter/features/departures/data/data.dart';
import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';

class DeparturesRemoteDataSource implements DeparturesDataSource {
  DeparturesRemoteDataSource(this.httpClient);

  final HttpClient httpClient;

  @override
  Future<List<Departure>> getDepartures({
    required String stopId,
    required String when,
  }) {
    return httpClient
        .get<Map<String, dynamic>>(
          path: 'stops/$stopId/departures',
          query: {
            'when': when,
            'duration': 60,
            'results': 30,
            'linesOfStops': false,
            'remarks': false,
            'language': httpClient.localeName,
          },
        )
        .then(
          (data) => (data['departures'] as List<dynamic>)
              .map((json) => Departure.fromJson(json as Map<String, dynamic>))
              .toList(),
        );
  }
}
