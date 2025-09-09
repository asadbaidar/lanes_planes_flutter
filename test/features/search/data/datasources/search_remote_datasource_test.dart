import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/core.dart';

import '../../../../helpers/mocks.dart';

final mockStopJson = {
  'id': 'stop1',
  'name': 'Test Stop',
  'products': {'bus': true},
};

void main() {
  group('SearchRemoteDataSource', () {
    late HttpClient httpClient;
    late SearchRemoteDataSource dataSource;

    setUp(() {
      httpClient = MockHttpClient();
      dataSource = SearchRemoteDataSource(httpClient);
    });

    test('findStops returns stops from rest api', () async {
      when(
        () => httpClient.get<List<dynamic>>(
          path: any(named: 'path'),
          query: any(named: 'query'),
        ),
      ).thenAnswer((_) async => [mockStopJson]);

      final stops = await dataSource.findStops('test');
      final stop = stops.first;

      expect(stops, isNotEmpty);
      expect(stop.id, 'stop1');
      expect(stop.name, 'Test Stop');
      expect(stop.products.bus, true);
      expect(stop.products.subway, null);
    });
  });
}
