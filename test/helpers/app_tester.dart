import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localization/localization.dart';
import 'package:core/core.dart';

/// A helper to wrap widgets with all required app context for widget tests.
extension AppTester on WidgetTester {
   Future<void> pumpApp(
    Widget child, {
    Locale? locale,
    ThemeData? theme,
    List<NavigatorObserver>? navigatorObservers,
  }) async {
    await pumpWidget(
      MaterialApp(
        locale: locale ?? const Locale('en'),
        theme: theme ?? AppTheme.lightTheme,
        localizationsDelegates: AppLocalization.localizationsDelegates,
        supportedLocales: AppLocalization.supportedLocales,
        home: child,
      ),
    );
  }
}
