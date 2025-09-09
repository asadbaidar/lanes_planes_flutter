import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:lanes_planes_flutter/core/constants/constants.dart';
import 'package:lanes_planes_flutter/core/router/app_router.dart';
import 'package:lanes_planes_flutter/features/features.dart';
import 'package:localization/localization.dart';

Future<void> init() async {
  // Dio client
  injection.registerLazySingleton(
    () => Dio(Environment.dioOptions)..addLogger(),
  );

  // L10n
  injection.registerLazySingleton(() => L10nNotifier());

  // Http Client
  injection.registerLazySingleton(
    () => HttpClient(dio: injection(), l10nNotifier: injection()),
  );

  // Router
  injection.registerLazySingleton(AppRouter.new);

  // Search dependencies
  injection
    // Datasource
    ..registerLazySingleton<SearchDataSource>(
      () => SearchRemoteDataSource(injection()),
      instanceName: 'remote',
    )
    // Repository
    ..registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(remote: injection(instanceName: 'remote')),
    )
    // UseCases
    ..registerLazySingleton(() => FindStops(injection()))
    // Blocs
    ..registerFactory(() => SearchBloc(injection()));

  // Departures dependencies
  injection
    // Datasource
    ..registerLazySingleton<DeparturesDataSource>(
      () => DeparturesRemoteDataSource(injection()),
      instanceName: 'remote',
    )
    // Repository
    ..registerLazySingleton<DeparturesRepository>(
      () => DeparturesRepositoryImpl(remote: injection(instanceName: 'remote')),
    )
    // UseCases
    ..registerLazySingleton(() => GetDepartures(injection()))
    // Blocs
    ..registerFactory(() => DeparturesBloc(injection()));
}
