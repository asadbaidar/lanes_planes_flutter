import 'package:lanes_planes_flutter/features/search/domain/domain.dart';

abstract class SearchRepository {
  Future<List<Stop>> findStops(String query);
}
