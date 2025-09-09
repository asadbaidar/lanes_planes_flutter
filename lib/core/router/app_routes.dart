import 'package:go_router/go_router.dart';
import 'package:lanes_planes_flutter/features/features.dart';

class AppRoutes {
  AppRoutes._();

  static const initial = HomePage.path;

  static List<GoRoute> list() => [
    GoRoute(
      path: HomePage.path,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: SearchPage.path,
          builder: (context, state) => const SearchPage(),
          routes: [
            GoRoute(
              path: DeparturesPage.path,
              builder: (context, state) => DeparturesPage(
                stopId: state.uri.queryParameters['stopId'],
                stopName: state.uri.queryParameters['stopName'],
              ),
            ),
          ],
        ),
      ],
    ),
  ];
}
