import 'package:lanes_planes_flutter/features/search/domain/entities/stop.dart';

abstract class SearchDataSource {
  Future<List<Stop>> findStops(String query);
}
