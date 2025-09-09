import 'package:core/di/di.dart';
import 'package:flutter/widgets.dart';
import 'package:localization/localization.dart';

L10nNotifier get _l10nNotifier => injection();

Widget l10nBuilder(BuildContext context, Widget? child) {
  final l10n = AppLocalization.of(context);
  if (_l10nNotifier.value != l10n) {
    _l10nNotifier.value = l10n;
  }
  return child!;
}