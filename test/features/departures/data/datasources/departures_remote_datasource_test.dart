import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/mocks.dart';

final mockDeparturesJson = {
  'departures': [
    {
      'tripId': 'dep1',
      'stop': {
        'id': 'stop1',
        'name': 'Test Stop',
        'products': {'bus': true},
      },
      'plannedWhen': '2025-09-09T12:00:00.000',
      'direction': 'North',
      'line': {'id': 'line1', 'name': 'Line 1', 'product': 'bus'},
    },
  ],
};

void main() {
  group('DeparturesRemoteDataSource', () {
    late HttpClient httpClient;
    late DeparturesDataSource dataSource;

    setUp(() {
      httpClient = MockHttpClient();
      dataSource = DeparturesRemoteDataSource(httpClient);
    });

    test('getDepartures returns departures from rest api', () async {
      when(
        () => httpClient.get<Map<String, dynamic>>(
          path: any(named: 'path'),
          query: any(named: 'query'),
        ),
      ).thenAnswer((_) async => mockDeparturesJson);

      final departures = await dataSource.getDepartures(
        stopId: 'stop1',
        when: '2025-09-09T12:00:00',
      );
      final departure = departures.first;

      expect(departures, isNotEmpty);
      expect(departure.tripId, 'dep1');
      expect(
        departure.plannedWhen.toIso8601String(),
        '2025-09-09T12:00:00.000',
      );
      expect(departure.stop.id, 'stop1');
      expect(departure.stop.products.bus, true);
      expect(departure.line.id, 'line1');
    });
  });
}
