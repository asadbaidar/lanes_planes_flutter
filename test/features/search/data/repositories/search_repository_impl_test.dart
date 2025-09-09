import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchDataSource extends Mock implements SearchDataSource {}

final mockStopEntity = Stop(
  id: 'stop1',
  name: 'Test Stop',
  products: Products(bus: true),
);

void main() {
  group('SearchRepositoryImpl', () {
    late SearchDataSource dataSource;
    late SearchRepositoryImpl repository;

    setUp(() {
      dataSource = MockSearchDataSource();
      repository = SearchRepositoryImpl(remote: dataSource);
    });

    test('findStops returns stops from data source', () async {
      when(
        () => dataSource.findStops(any()),
      ).thenAnswer((_) async => [mockStopEntity]);

      final stops = await repository.findStops('test');
      final stop = stops.first;

      expect(stops, isNotEmpty);
      expect(stop.id, 'stop1');
      expect(stop.name, 'Test Stop');
      expect(stop.products.bus, true);
      expect(stop.products.subway, null);
    });
  });
}
