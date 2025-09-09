import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/app_tester.dart';
import '../../../../helpers/mocks.dart';
import '../../data/repositories/search_repository_impl_test.dart';

class MockSearchBloc extends Mock implements SearchBloc {}

void main() {
  late SearchBloc bloc;

  setUp(() {
    bloc = MockSearchBloc();
  });

  group('SearchPageView renders correctly', () {
    testWidgets('when loading state', (tester) async {
      bloc.whenState(SearchState.loading());

      await tester.pumpApp(
        BlocProvider.value(value: bloc, child: SearchPageView()),
      );
      await tester.pump();

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      expect(find.byType(SearchField), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(SearchResultTile), findsNothing);
    });

    testWidgets('when success state', (tester) async {
      bloc.whenState(SearchState.success(value: [mockStopEntity]));

      await tester.pumpApp(
        BlocProvider.value(value: bloc, child: SearchPageView()),
      );
      await tester.pump();

      expect(find.text('Test Stop'), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(SearchResultTile), findsOneWidget);
      expect(find.byType(SearchField), findsOneWidget);
      expect(find.byType(LinearProgressIndicator), findsNothing);
    });

    testWidgets('when failure state', (tester) async {
      bloc.whenState(SearchState.failure(error: NotFoundException('error')));

      await tester.pumpApp(
        BlocProvider.value(value: bloc, child: SearchPageView()),
      );
      await tester.pump();

      expect(find.byType(MessageView), findsOneWidget);
      expect(find.text('error'), findsOneWidget);
      expect(find.byType(ListView), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsNothing);
    });
  });
}
