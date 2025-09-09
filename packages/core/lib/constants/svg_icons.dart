// ignore_for_file: constant_identifier_names

enum SvgIcons {
  blank,
  arrow_left_alt,
  bus,
  cancel,
  chevron_right,
  close,
  explore_nearby,
  express,
  ferry,
  regional,
  search,
  suburban,
  subway,
  tram
  ;

  factory SvgIcons.fromName(String? name) => SvgIcons.values.firstWhere(
    (e) => e.name == name,
    orElse: () => SvgIcons.blank,
  );
}

const String _baseDir = 'packages/core/assets';
const String _iconDir = '$_baseDir/icons';

extension SvgIconsX on SvgIcons {
  String call() => '$_iconDir/$name.svg';
}
