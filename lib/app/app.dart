import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:lanes_planes_flutter/core/core.dart';
import 'package:localization/localization.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = injection<AppRouter>();
    return MaterialApp.router(
      onGenerateTitle: (context) => context.l10n.appName,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config,
      localizationsDelegates: AppLocalization.localizationsDelegates,
      supportedLocales: AppLocalization.supportedLocales,
      builder: l10nBuilder,
    );
  }
}
