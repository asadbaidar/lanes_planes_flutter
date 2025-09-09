import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_de.dart';
import 'app_localization_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalization
/// returned by `AppLocalization.of(context)`.
///
/// Applications need to include `AppLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalization.localizationsDelegates,
///   supportedLocales: AppLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalization.supportedLocales
/// property.
abstract class AppLocalization {
  AppLocalization(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  static const LocalizationsDelegate<AppLocalization> delegate =
      _AppLocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('de')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Lanes & Planes'**
  String get appName;

  /// No description provided for @searchForStation.
  ///
  /// In en, this message translates to:
  /// **'Search for station'**
  String get searchForStation;

  /// No description provided for @departures.
  ///
  /// In en, this message translates to:
  /// **'Departures'**
  String get departures;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'cancelled'**
  String get cancelled;

  /// No description provided for @delayed.
  ///
  /// In en, this message translates to:
  /// **'delayed'**
  String get delayed;

  /// No description provided for @onTime.
  ///
  /// In en, this message translates to:
  /// **'on-time'**
  String get onTime;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any results'**
  String get noResults;

  /// No description provided for @noDepartures.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any departures from this stop.'**
  String get noDepartures;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Find the best public transport connections'**
  String get homeTitle;

  /// No description provided for @platform.
  ///
  /// In en, this message translates to:
  /// **'Platform {platform}'**
  String platform(Object platform);

  /// No description provided for @notFoundException.
  ///
  /// In en, this message translates to:
  /// **'Resource not found.'**
  String get notFoundException;

  /// No description provided for @noDataException.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again later.'**
  String get noDataException;

  /// No description provided for @typeMismatchException.
  ///
  /// In en, this message translates to:
  /// **'Type used is not matching the expected one.'**
  String get typeMismatchException;

  /// No description provided for @serverException.
  ///
  /// In en, this message translates to:
  /// **'Unable to fulfill the request, please try again later.'**
  String get serverException;

  /// No description provided for @noInternetException.
  ///
  /// In en, this message translates to:
  /// **'No internet access, please check your internet and try again.'**
  String get noInternetException;

  /// No description provided for @badRequestException.
  ///
  /// In en, this message translates to:
  /// **'Request was invalid.'**
  String get badRequestException;

  /// No description provided for @unauthorisedException.
  ///
  /// In en, this message translates to:
  /// **'Request was not authorized.'**
  String get unauthorisedException;

  /// No description provided for @timeoutException.
  ///
  /// In en, this message translates to:
  /// **'Its taking longer than usual, please check your internet and try again later.'**
  String get timeoutException;

  /// No description provided for @cancelException.
  ///
  /// In en, this message translates to:
  /// **'Request was canceled.'**
  String get cancelException;

  /// No description provided for @unknownException.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get unknownException;
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(lookupAppLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}

AppLocalization lookupAppLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationDe();
    case 'en':
      return AppLocalizationEn();
  }

  throw FlutterError(
      'AppLocalization.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
