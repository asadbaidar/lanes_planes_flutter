import 'package:core/core.dart';
import 'package:logger/logger.dart';
import 'dart:developer' as developer;

class DevOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (var l in event.lines) {
      developer.log(l, name: event.origin.time.formatSeconds);
    }
  }
}

final logger = Logger(
  output: DevOutput(),
  printer: PrettyPrinter(methodCount: 0, noBoxingByDefault: true),
  level: Level.all,
);

void $debugPrint(
  Object? message, {
  String tag = 'd',
  Object? error,
  StackTrace? stackTrace,
}) {
  logger.d('[$tag] $message', error: error, stackTrace: stackTrace);
}

void $errorPrint(
  Object? message, {
  dynamic tag = 'e',
  Object? error,
  StackTrace? stackTrace,
}) {
  logger.e('[$tag] $message', error: error, stackTrace: stackTrace);
}
