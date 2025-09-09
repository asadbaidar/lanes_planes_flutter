import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/app_tester.dart';
import '../../../../helpers/mocks.dart';
import '../../data/repositories/departures_repository_impl_test.dart';

class MockDeparturesBloc extends Mock implements DeparturesBloc {}

void main() {
  late DeparturesBloc bloc;

  setUp(() {
    bloc = MockDeparturesBloc();
  });

  group('DeparturesPageView renders correctly', () {
    testWidgets('when loading state', (tester) async {
      bloc.whenState(DeparturesState.loading());

      await tester.pumpApp(
        BlocProvider.value(
          value: bloc,
          child: DeparturesPageView(title: 'Test Stop'),
        ),
      );
      await tester.pump();

      expect(find.text('Test Stop'), findsOneWidget);
      expect(find.byType(GoHomeButton), findsOneWidget);
      expect(find.byType(MessageView), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(DepartureListTile), findsNothing);
    });

    testWidgets('when success state', (tester) async {
      bloc.whenState(DeparturesState.success(value: [mockDepartureEntity]));

      await tester.pumpApp(
        BlocProvider.value(
          value: bloc,
          child: DeparturesPageView(title: 'Test Stop'),
        ),
      );
      await tester.pump();

      expect(find.byType(DepartureListTile), findsOneWidget);
      expect(find.text('North'), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(MessageView), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsNothing);
    });

    testWidgets('when failure state', (tester) async {
      bloc.whenState(
        DeparturesState.failure(error: NotFoundException('error')),
      );

      await tester.pumpApp(
        BlocProvider.value(
          value: bloc,
          child: DeparturesPageView(title: 'Test Stop'),
        ),
      );
      await tester.pump();

      expect(find.byType(MessageView), findsOneWidget);
      expect(find.text('error'), findsOneWidget);
      expect(find.byType(ListView), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsNothing);
    });
  });
}
