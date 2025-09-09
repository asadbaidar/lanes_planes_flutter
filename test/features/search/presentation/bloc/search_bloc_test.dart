import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/repositories/search_repository_impl_test.dart';

class MockFindStops extends Mock implements FindStops {}

void main() {
  group('SearchBloc', () {
    late FindStops findStops;

    setUp(() {
      findStops = MockFindStops();
    });

    blocTest<SearchBloc, SearchState>(
      'emits loading and success when stops are loaded',
      setUp: () {
        when(() => findStops('test')).thenAnswer((_) async => [mockStopEntity]);
      },
      build: () => SearchBloc(findStops),
      act: (bloc) => bloc.add(const SearchStops('test')),
      wait: kDebounceDuration,
      expect: () => [
        isA<SearchState>().having((s) => s.isLoading, 'isLoading', true),
        isA<SearchState>()
            .having((s) => s.isSuccess, 'isSuccess', true)
            .having((s) => s.results, 'isNotEmpty', isNotEmpty),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'emits loading and failure when findStops throws',
      setUp: () {
        when(() => findStops('test')).thenThrow(Exception('error'));
      },
      build: () => SearchBloc(findStops),
      act: (bloc) => bloc.add(const SearchStops('test')),
      wait: kDebounceDuration,
      expect: () => [
        isA<SearchState>().having((s) => s.isLoading, 'isLoading', true),
        isA<SearchState>()
            .having((s) => s.isFailure, 'isFailure', true)
            .having((s) => s.error, 'error', isA<Exception>()),
      ],
    );
  });
}
