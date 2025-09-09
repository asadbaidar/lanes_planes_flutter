import 'package:lanes_planes_flutter/features/search/domain/domain.dart';

class FindStops {
  FindStops(this.repository);

  final SearchRepository repository;

  Future<List<Stop>> call(String query) {
    return repository.findStops(query).then((stops) {
      return stops
          .where(
            (stop) => stop.name.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    });
  }
}
