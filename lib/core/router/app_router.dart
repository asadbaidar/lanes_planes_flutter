import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lanes_planes_flutter/core/router/router.dart';

class AppRouter {
  AppRouter({
    String? initialRoute,
    List<RouteBase>? routes,
    GlobalKey<NavigatorState>? navigatorKey,
    List<NavigatorObserver>? observers,
  }) : config = GoRouter(
         navigatorKey: navigatorKey,
         initialLocation: initialRoute ?? AppRoutes.initial,
         routes: routes ?? AppRoutes.list(),
         observers: observers,
         redirect: (context, state) {
           $debugPrint(state.uri, tag: 'route');
           return null;
         },
       );

  final GoRouter config;
}
