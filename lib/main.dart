import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lanes_planes_flutter/app/app.dart';
import 'package:lanes_planes_flutter/core/di/di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Bloc.observer = AppBlocObserver();

  runApp(const App());
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    $debugPrint(bloc.state, tag: 'bloc.change');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    $errorPrint(
      bloc.state,
      tag: 'bloc.error',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }
}
