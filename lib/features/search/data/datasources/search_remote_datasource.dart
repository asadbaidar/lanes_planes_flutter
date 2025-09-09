import 'package:core/core.dart';
import 'package:lanes_planes_flutter/features/search/data/data.dart';
import 'package:lanes_planes_flutter/features/search/domain/domain.dart';

class SearchRemoteDataSource implements SearchDataSource {
  SearchRemoteDataSource(this.httpClient);

  final HttpClient httpClient;

  @override
  Future<List<Stop>> findStops(String query) {
    return httpClient
        .get<List<dynamic>>(
          path: 'locations',
          query: {
            'query': query,
            'fuzzy': false,
            'results': 10,
            'stops': true,
            'addresses': false,
            'poi': false,
            'linesOfStops': false,
            'language': httpClient.localeName,
          },
        )
        .then(
          (data) => data
              .map((json) => Stop.fromJson(json as Map<String, dynamic>))
              .toList(),
        );
  }
}
