import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:localization/localization.dart';

part 'data_state.freezed.dart';

@freezed
sealed class DataState<T> with _$DataState<T> {
  const factory DataState.initial({String? key, T? value}) = InitialState<T>;
  const factory DataState.loading({String? key, T? value}) = LoadingState<T>;
  const factory DataState.success({String? key, T? value}) = SuccessState<T>;
  const factory DataState.failure({String? key, T? value, dynamic error}) =
      FailureState<T>;
}

extension DataStateX<T> on DataState<T> {
  bool get isInitial => this is InitialState<T>;
  bool get isLoading => this is LoadingState<T>;
  bool get isSuccess => this is SuccessState<T>;
  bool get isFailure => this is FailureState<T>;

  DataState<T> toLoading({String? key, T? value}) {
    return DataState<T>.loading(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  DataState<T> toSuccess({String? key, T? value}) {
    return DataState<T>.success(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  DataState<T> toFailure({String? key, T? value, dynamic error}) {
    return DataState<T>.failure(
      key: key ?? this.key,
      value: value ?? this.value,
      error: error ?? this.error,
    );
  }

  String? get key => map(
        initial: (s) => s.key,
        loading: (s) => s.key,
        success: (s) => s.key,
        failure: (s) => s.key,
      );

  T? get value => map(
        initial: (s) => s.value,
        loading: (s) => s.value,
        success: (s) => s.value,
        failure: (s) => s.value,
      );

  dynamic get error => maybeMap(failure: (s) => s.error, orElse: () => null);

  String errorMessage(AppLocalization l10n) {
    final msg = $cast<HttpException>(error)?.message(l10n) ?? error?.toString();
    return isFailure ? msg ?? l10n.unknownException : '';
  }
}
