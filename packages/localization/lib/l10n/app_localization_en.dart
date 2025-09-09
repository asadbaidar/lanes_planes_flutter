// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationEn extends AppLocalization {
  AppLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Lanes & Planes';

  @override
  String get searchForStation => 'Search for station';

  @override
  String get departures => 'Departures';

  @override
  String get cancelled => 'cancelled';

  @override
  String get delayed => 'delayed';

  @override
  String get onTime => 'on-time';

  @override
  String get noResults => 'We couldn\'t find any results';

  @override
  String get noDepartures => 'We couldn\'t find any departures from this stop.';

  @override
  String get homeTitle => 'Find the best public transport connections';

  @override
  String platform(Object platform) {
    return 'Platform $platform';
  }

  @override
  String get notFoundException => 'Resource not found.';

  @override
  String get noDataException => 'Something went wrong, please try again later.';

  @override
  String get typeMismatchException =>
      'Type used is not matching the expected one.';

  @override
  String get serverException =>
      'Unable to fulfill the request, please try again later.';

  @override
  String get noInternetException =>
      'No internet access, please check your internet and try again.';

  @override
  String get badRequestException => 'Request was invalid.';

  @override
  String get unauthorisedException => 'Request was not authorized.';

  @override
  String get timeoutException =>
      'Its taking longer than usual, please check your internet and try again later.';

  @override
  String get cancelException => 'Request was canceled.';

  @override
  String get unknownException => 'Something went wrong!';
}
