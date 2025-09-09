import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';
import 'package:lanes_planes_flutter/features/departures/presentation/presentation.dart';

typedef DeparturesState = DataState<List<Departure>>;

class DeparturesBloc extends Bloc<DeparturesEvent, DeparturesState> {
  DeparturesBloc(this.getDepartures) : super(const DataState.initial()) {
    on<LoadDepartures>(_onLoadDepartures);
  }

  final GetDepartures getDepartures;

  Future<void> _onLoadDepartures(
    LoadDepartures event,
    Emitter<DeparturesState> emit,
  ) async {
    emit(state.toLoading(key: event.stopId));
    try {
      final data = await getDepartures(event.stopId);
      emit(state.toSuccess(value: data));
    } catch (e) {
      emit(state.toFailure(error: e));
    }
  }
}

extension DeparturesStateValues on DeparturesState {
  List<Departure> get departures => value ?? [];

  bool get hasNoDepartures => isSuccess && departures.isEmpty;
}
