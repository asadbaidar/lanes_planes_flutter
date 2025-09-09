import 'dart:ui';
import 'package:flutter/material.dart';

@immutable
class AppRadius extends ThemeExtension<AppRadius> {
  const AppRadius({
    required this.none,
    required this.extraSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.rounded,
  });

  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double rounded;

  @override
  AppRadius copyWith({
    double? none,
    double? extraSmall,
    double? small,
    double? medium,
    double? large,
    double? rounded,
  }) {
    return AppRadius(
      none: none ?? this.none,
      extraSmall: extraSmall ?? this.extraSmall,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      rounded: rounded ?? this.rounded,
    );
  }

  @override
  AppRadius lerp(ThemeExtension<AppRadius>? other, double t) {
    if (other is! AppRadius) return this;
    return AppRadius(
      none: lerpDouble(none, other.none, t) ?? none,
      extraSmall: lerpDouble(extraSmall, other.extraSmall, t) ?? extraSmall,
      small: lerpDouble(small, other.small, t) ?? small,
      medium: lerpDouble(medium, other.medium, t) ?? medium,
      large: lerpDouble(large, other.large, t) ?? large,
      rounded: lerpDouble(rounded, other.rounded, t) ?? rounded,
    );
  }
}
