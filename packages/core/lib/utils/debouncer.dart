import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

const kDebounceDuration = Duration(milliseconds: 600);

/// Debounce transformer for events
EventTransformer<T> debounce<T>([Duration duration = kDebounceDuration]) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}
