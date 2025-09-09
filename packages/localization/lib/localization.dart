library;

import 'package:flutter/widgets.dart';
import 'package:localization/l10n/app_localization.dart';
import 'package:localization/l10n/app_localization_en.dart';

export 'l10n/app_localization.dart';

extension LocalizationX on BuildContext {
  AppLocalization get l10n => AppLocalization.of(this);
}

class L10nNotifier extends ValueNotifier<AppLocalization> {
  L10nNotifier() : super(AppLocalizationEn());
}
