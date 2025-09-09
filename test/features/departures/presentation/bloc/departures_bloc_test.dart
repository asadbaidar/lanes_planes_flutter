import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/repositories/departures_repository_impl_test.dart';

class MockGetDepartures extends Mock implements GetDepartures {}

void main() {
  group('DeparturesBloc', () {
    late GetDepartures getDepartures;

    setUp(() {
      getDepartures = MockGetDepartures();
    });

    blocTest<DeparturesBloc, DeparturesState>(
      'emits loading and success when departures are loaded',
      setUp: () {
        when(
          () => getDepartures('stop1'),
        ).thenAnswer((_) async => [mockDepartureEntity]);
      },
      build: () => DeparturesBloc(getDepartures),
      act: (bloc) => bloc.add(const LoadDepartures('stop1')),
      expect: () => [
        isA<DeparturesState>().having((s) => s.isLoading, 'isLoading', true),
        isA<DeparturesState>()
            .having((s) => s.isSuccess, 'isSuccess', true)
            .having((s) => s.departures, 'isNotEmpty', isNotEmpty),
      ],
    );

    blocTest<DeparturesBloc, DeparturesState>(
      'emits loading and failure when getDepartures throws',
      setUp: () {
        when(() => getDepartures('stop1')).thenThrow(Exception('error'));
      },
      build: () => DeparturesBloc(getDepartures),
      act: (bloc) => bloc.add(const LoadDepartures('stop1')),
      expect: () => [
        isA<DeparturesState>().having((s) => s.isLoading, 'isLoading', true),
        isA<DeparturesState>()
            .having((s) => s.isFailure, 'isFailure', true)
            .having((s) => s.error, 'error', isA<Exception>()),
      ],
    );
  });
}
