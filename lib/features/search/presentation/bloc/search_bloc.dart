import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanes_planes_flutter/features/search/domain/domain.dart';
import 'package:lanes_planes_flutter/features/search/presentation/presentation.dart';

typedef SearchState = DataState<List<Stop>>;

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.findStops) : super(const DataState.initial()) {
    on<SearchStops>(_onSearchStops, transformer: debounce());
  }

  final FindStops findStops;

  Future<void> _onSearchStops(
    SearchStops event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const DataState.initial());
      return;
    }

    emit(state.toLoading(key: event.query));
    try {
      final data = await findStops(event.query);
      emit(state.toSuccess(value: data));
    } catch (e) {
      emit(state.toFailure(error: e));
    }
  }
}

extension SearchStateValues on SearchState {
  List<Stop> get results => value ?? [];

  bool get hasNoResults =>
      isSuccess && results.isEmpty && key != null && key!.isNotEmpty;
}
