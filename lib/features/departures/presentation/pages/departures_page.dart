import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:lanes_planes_flutter/features/departures/presentation/presentation.dart';

class DeparturesPage extends StatelessWidget {
  const DeparturesPage({super.key, this.stopId, this.stopName});

  final String? stopId;
  final String? stopName;

  static const path = 'departures';
  static String route({required String stopId, required String stopName}) =>
      path.withQuery({'stopId': stopId, 'stopName': stopName});

  @override
  Widget build(BuildContext context) {
    return BlocInjection<DeparturesBloc>(
      onCreate: (bloc) {
        if (stopId case final id?) {
          bloc.add(LoadDepartures(id));
        }
      },
      child: DeparturesPageView(title: stopName),
    );
  }
}

class DeparturesPageView extends StatelessWidget {
  const DeparturesPageView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title, actions: [GoHomeButton()]),
      body: DeparturesList(),
    );
  }
}
