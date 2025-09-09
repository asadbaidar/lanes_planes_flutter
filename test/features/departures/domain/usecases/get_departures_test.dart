import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/repositories/departures_repository_impl_test.dart';

class MockDeparturesRepository extends Mock implements DeparturesRepository {}

void main() {
  group('GetDepartures', () {
    late DeparturesRepository repository;
    late GetDepartures getDepartures;

    setUp(() {
      repository = MockDeparturesRepository();
      getDepartures = GetDepartures(repository);
    });

    test('calls repository and returns departures', () async {
      when(
        () => repository.getDepartures(
          stopId: any(named: 'stopId'),
          when: any(named: 'when'),
        ),
      ).thenAnswer((_) async => [mockDepartureEntity]);

      final departures = await getDepartures('stop1');
      final departure = departures.first;

      expect(departures, isNotEmpty);
      expect(departure.tripId, 'dep1');
      expect(departure.stop.id, 'stop1');
      expect(departure.stop.products.bus, true);
      expect(departure.line.id, 'line1');
      expect(
        departure.plannedWhen.toIso8601String(),
        '2025-09-09T12:00:00.000',
      );
    });
  });
}
