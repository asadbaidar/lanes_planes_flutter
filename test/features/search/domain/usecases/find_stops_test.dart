import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/repositories/search_repository_impl_test.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  group('FindStops', () {
    late SearchRepository repository;
    late FindStops findStops;

    setUp(() {
      repository = MockSearchRepository();
      findStops = FindStops(repository);
    });

    test('returns stops from repository', () async {
      when(
        () => repository.findStops(any()),
      ).thenAnswer((_) async => [mockStopEntity]);

      final stops = await findStops('test');
      final stop = stops.first;

      expect(stops, isNotEmpty);
      expect(stop.id, 'stop1');
      expect(stop.name, 'Test Stop');
      expect(stop.products.bus, true);
      expect(stop.products.subway, null);
    });
  });
}
