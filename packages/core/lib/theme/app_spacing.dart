import 'dart:ui';
import 'package:flutter/material.dart';

@immutable
class AppSpacing extends ThemeExtension<AppSpacing> {
  const AppSpacing({
    required this.v2,
    required this.v4,
    required this.v8,
    required this.v12,
    required this.v16,
    required this.v20,
    required this.v24,
    required this.v32,
    required this.v40,
  });

  final double v2;
  final double v4;
  final double v8;
  final double v12;
  final double v16;
  final double v20;
  final double v24;
  final double v32;
  final double v40;

  @override
  AppSpacing copyWith({
    double? v2,
    double? v4,
    double? v8,
    double? v12,
    double? v16,
    double? v20,
    double? v24,
    double? v32,
    double? v40,
  }) {
    return AppSpacing(
      v2: v2 ?? this.v2,
      v4: v4 ?? this.v4,
      v8: v8 ?? this.v8,
      v12: v12 ?? this.v12,
      v16: v16 ?? this.v16,
      v20: v20 ?? this.v20,
      v24: v24 ?? this.v24,
      v32: v32 ?? this.v32,
      v40: v40 ?? this.v40,
    );
  }

  @override
  AppSpacing lerp(ThemeExtension<AppSpacing>? other, double t) {
    if (other is! AppSpacing) return this;
    return AppSpacing(
      v2: lerpDouble(v2, other.v2, t) ?? v2,
      v4: lerpDouble(v4, other.v4, t) ?? v4,
      v8: lerpDouble(v8, other.v8, t) ?? v8,
      v12: lerpDouble(v12, other.v12, t) ?? v12,
      v16: lerpDouble(v16, other.v16, t) ?? v16,
      v20: lerpDouble(v20, other.v20, t) ?? v20,
      v24: lerpDouble(v24, other.v24, t) ?? v24,
      v32: lerpDouble(v32, other.v32, t) ?? v32,
      v40: lerpDouble(v40, other.v40, t) ?? v40,
    );
  }
}
