// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationDe extends AppLocalization {
  AppLocalizationDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Lanes & Planes';

  @override
  String get searchForStation => 'Station suchen';

  @override
  String get departures => 'Abfahrten';

  @override
  String get cancelled => 'abgesagt';

  @override
  String get delayed => 'verspätet';

  @override
  String get onTime => 'pünktlich';

  @override
  String get noResults => 'Wir konnten keine Ergebnisse finden.';

  @override
  String get noDepartures =>
      'Wir konnten keine Abfahrten von dieser Haltestelle finden.';

  @override
  String get homeTitle =>
      'Finde die besten Verbindungen mit öffentlichen Verkehrsmitteln';

  @override
  String platform(Object platform) {
    return 'Gleis $platform';
  }

  @override
  String get notFoundException => 'Ressource nicht gefunden.';

  @override
  String get noDataException =>
      'Etwas ist schief gelaufen, bitte versuchen Sie es später erneut.';

  @override
  String get typeMismatchException =>
      'Der verwendete Typ stimmt nicht mit dem erwarteten überein.';

  @override
  String get serverException =>
      'Anfrage konnte nicht erfüllt werden, bitte versuchen Sie es später erneut.';

  @override
  String get noInternetException =>
      'Kein Internetzugang, bitte überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get badRequestException => 'Anfrage war ungültig.';

  @override
  String get unauthorisedException => 'Anfrage war nicht autorisiert.';

  @override
  String get timeoutException =>
      'Es dauert länger als gewöhnlich, bitte überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get cancelException => 'Anfrage wurde abgebrochen.';

  @override
  String get unknownException => 'Etwas ist schief gelaufen!';
}
