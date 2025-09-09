import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

class MockDeparturesDataSource extends Mock implements DeparturesDataSource {}

final mockDepartureEntity = Departure(
  tripId: 'dep1',
  stop: Stop(id: 'stop1', name: 'Test Stop', products: Products(bus: true)),
  plannedWhen: DateTime.parse('2025-09-09T12:00:00.000'),
  platform: '2',
  direction: 'North',
  line: Line(
    id: 'line1',
    name: 'L1',
    product: LineProduct.bus,
    productName: LineProduct.bus.name,
  ),
);

void main() {
  group('DeparturesRepositoryImpl', () {
    late DeparturesDataSource dataSource;
    late DeparturesRepository repository;

    setUp(() {
      dataSource = MockDeparturesDataSource();
      repository = DeparturesRepositoryImpl(remote: dataSource);
    });

    test('getDepartures return departures from data source', () async {
      when(
        () => dataSource.getDepartures(
          stopId: any(named: 'stopId'),
          when: any(named: 'when'),
        ),
      ).thenAnswer((_) async => [mockDepartureEntity]);

      final departures = await repository.getDepartures(
        stopId: 'stop1',
        when: DateTime.parse('2025-09-09T12:00:00'),
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
