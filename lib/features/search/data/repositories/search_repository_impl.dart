import 'package:lanes_planes_flutter/features/search/data/data.dart';
import 'package:lanes_planes_flutter/features/search/domain/domain.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl({required this.remote});

  final SearchDataSource remote;

  @override
  Future<List<Stop>> findStops(String query) {
    return remote.findStops(query);
  }
}
