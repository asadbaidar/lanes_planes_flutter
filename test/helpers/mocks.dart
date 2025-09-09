import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/l10n/app_localization_en.dart';
import 'package:localization/localization.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements HttpClient {
  @override
  AppLocalization get l10n => AppLocalizationEn();

  @override
  String get localeName => l10n.localeName;
}

extension BlocWhen<T> on BlocBase<T> {
  void whenState(T state) {
    when(() => this.state).thenReturn(state);
    when(() => stream).thenAnswer((_) => Stream.fromIterable([state]));
  }
}
