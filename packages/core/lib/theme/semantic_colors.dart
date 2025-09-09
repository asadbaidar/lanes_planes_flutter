import 'package:flutter/material.dart';
import 'package:core/theme/theme.dart';

/// Semantic Color System
@immutable
class SemanticColors extends ThemeExtension<SemanticColors> {
  const SemanticColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.backgroundInversePrimary,
    required this.backgroundInverseSecondary,
    required this.backgroundSystemAttention,
    required this.backgroundSystemError,
    required this.backgroundSystemInformative,
    required this.backgroundSystemNeutral,
    required this.backgroundSystemSuccess,
    required this.borderPrimary,
    required this.borderSecondary,
    required this.foregroundDisabled,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.foregroundInversePrimary,
    required this.foregroundInverseSecondary,
    required this.foregroundSystemAttention,
    required this.foregroundSystemError,
    required this.foregroundSystemInformative,
    required this.foregroundSystemNeutral,
    required this.foregroundSystemSuccess,
    required this.interactionPrimaryEnabled,
    required this.interactionPrimaryFocused,
    required this.interactionPrimaryHovered,
    required this.interactionPrimaryPressed,
    required this.interactionSecondaryEnabled,
    required this.interactionSecondaryFocused,
    required this.interactionSecondaryHovered,
    required this.interactionSecondaryPressed,
    required this.opacity8,
    required this.opacity12,
    required this.opacity16,
  });

  // Background
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color backgroundTertiary;

  // Background Inverse
  final Color backgroundInversePrimary;
  final Color backgroundInverseSecondary;

  // Background System
  final Color backgroundSystemAttention;
  final Color backgroundSystemError;
  final Color backgroundSystemInformative;
  final Color backgroundSystemNeutral;
  final Color backgroundSystemSuccess;

  // Border
  final Color borderPrimary;
  final Color borderSecondary;

  // Foreground
  final Color foregroundDisabled;
  final Color foregroundPrimary;
  final Color foregroundSecondary;
  final Color foregroundTertiary;

  // Foreground Inverse
  final Color foregroundInversePrimary;
  final Color foregroundInverseSecondary;

  // Foreground System
  final Color foregroundSystemAttention;
  final Color foregroundSystemError;
  final Color foregroundSystemInformative;
  final Color foregroundSystemNeutral;
  final Color foregroundSystemSuccess;

  // Interaction Primary
  final Color interactionPrimaryEnabled;
  final Color interactionPrimaryFocused;
  final Color interactionPrimaryHovered;
  final Color interactionPrimaryPressed;

  // Interaction Secondary
  final Color interactionSecondaryEnabled;
  final Color interactionSecondaryFocused;
  final Color interactionSecondaryHovered;
  final Color interactionSecondaryPressed;

  // Opacity
  final Color opacity8;
  final Color opacity12;
  final Color opacity16;

  @override
  SemanticColors copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? backgroundInversePrimary,
    Color? backgroundInverseSecondary,
    Color? backgroundSystemAttention,
    Color? backgroundSystemError,
    Color? backgroundSystemInformative,
    Color? backgroundSystemNeutral,
    Color? backgroundSystemSuccess,
    Color? borderPrimary,
    Color? borderSecondary,
    Color? foregroundDisabled,
    Color? foregroundPrimary,
    Color? foregroundSecondary,
    Color? foregroundTertiary,
    Color? foregroundInversePrimary,
    Color? foregroundInverseSecondary,
    Color? foregroundSystemAttention,
    Color? foregroundSystemError,
    Color? foregroundSystemInformative,
    Color? foregroundSystemNeutral,
    Color? foregroundSystemSuccess,
    Color? interactionPrimaryEnabled,
    Color? interactionPrimaryFocused,
    Color? interactionPrimaryHovered,
    Color? interactionPrimaryPressed,
    Color? interactionSecondaryEnabled,
    Color? interactionSecondaryFocused,
    Color? interactionSecondaryHovered,
    Color? interactionSecondaryPressed,
    Color? opacity8,
    Color? opacity12,
    Color? opacity16,
  }) {
    return SemanticColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      backgroundInversePrimary:
          backgroundInversePrimary ?? this.backgroundInversePrimary,
      backgroundInverseSecondary:
          backgroundInverseSecondary ?? this.backgroundInverseSecondary,
      backgroundSystemAttention:
          backgroundSystemAttention ?? this.backgroundSystemAttention,
      backgroundSystemError:
          backgroundSystemError ?? this.backgroundSystemError,
      backgroundSystemInformative:
          backgroundSystemInformative ?? this.backgroundSystemInformative,
      backgroundSystemNeutral:
          backgroundSystemNeutral ?? this.backgroundSystemNeutral,
      backgroundSystemSuccess:
          backgroundSystemSuccess ?? this.backgroundSystemSuccess,
      borderPrimary: borderPrimary ?? this.borderPrimary,
      borderSecondary: borderSecondary ?? this.borderSecondary,
      foregroundDisabled: foregroundDisabled ?? this.foregroundDisabled,
      foregroundPrimary: foregroundPrimary ?? this.foregroundPrimary,
      foregroundSecondary: foregroundSecondary ?? this.foregroundSecondary,
      foregroundTertiary: foregroundTertiary ?? this.foregroundTertiary,
      foregroundInversePrimary:
          foregroundInversePrimary ?? this.foregroundInversePrimary,
      foregroundInverseSecondary:
          foregroundInverseSecondary ?? this.foregroundInverseSecondary,
      foregroundSystemAttention:
          foregroundSystemAttention ?? this.foregroundSystemAttention,
      foregroundSystemError:
          foregroundSystemError ?? this.foregroundSystemError,
      foregroundSystemInformative:
          foregroundSystemInformative ?? this.foregroundSystemInformative,
      foregroundSystemNeutral:
          foregroundSystemNeutral ?? this.foregroundSystemNeutral,
      foregroundSystemSuccess:
          foregroundSystemSuccess ?? this.foregroundSystemSuccess,
      interactionPrimaryEnabled:
          interactionPrimaryEnabled ?? this.interactionPrimaryEnabled,
      interactionPrimaryFocused:
          interactionPrimaryFocused ?? this.interactionPrimaryFocused,
      interactionPrimaryHovered:
          interactionPrimaryHovered ?? this.interactionPrimaryHovered,
      interactionPrimaryPressed:
          interactionPrimaryPressed ?? this.interactionPrimaryPressed,
      interactionSecondaryEnabled:
          interactionSecondaryEnabled ?? this.interactionSecondaryEnabled,
      interactionSecondaryFocused:
          interactionSecondaryFocused ?? this.interactionSecondaryFocused,
      interactionSecondaryHovered:
          interactionSecondaryHovered ?? this.interactionSecondaryHovered,
      interactionSecondaryPressed:
          interactionSecondaryPressed ?? this.interactionSecondaryPressed,
      opacity8: opacity8 ?? this.opacity8,
      opacity12: opacity12 ?? this.opacity12,
      opacity16: opacity16 ?? this.opacity16,
    );
  }

  @override
  SemanticColors lerp(ThemeExtension<SemanticColors>? other, double t) {
    if (other is! SemanticColors) return this;
    return SemanticColors(
      backgroundPrimary: Color.lerp(
        backgroundPrimary,
        other.backgroundPrimary,
        t,
      )!,
      backgroundSecondary: Color.lerp(
        backgroundSecondary,
        other.backgroundSecondary,
        t,
      )!,
      backgroundTertiary: Color.lerp(
        backgroundTertiary,
        other.backgroundTertiary,
        t,
      )!,
      backgroundInversePrimary: Color.lerp(
        backgroundInversePrimary,
        other.backgroundInversePrimary,
        t,
      )!,
      backgroundInverseSecondary: Color.lerp(
        backgroundInverseSecondary,
        other.backgroundInverseSecondary,
        t,
      )!,
      backgroundSystemAttention: Color.lerp(
        backgroundSystemAttention,
        other.backgroundSystemAttention,
        t,
      )!,
      backgroundSystemError: Color.lerp(
        backgroundSystemError,
        other.backgroundSystemError,
        t,
      )!,
      backgroundSystemInformative: Color.lerp(
        backgroundSystemInformative,
        other.backgroundSystemInformative,
        t,
      )!,
      backgroundSystemNeutral: Color.lerp(
        backgroundSystemNeutral,
        other.backgroundSystemNeutral,
        t,
      )!,
      backgroundSystemSuccess: Color.lerp(
        backgroundSystemSuccess,
        other.backgroundSystemSuccess,
        t,
      )!,
      borderPrimary: Color.lerp(borderPrimary, other.borderPrimary, t)!,
      borderSecondary: Color.lerp(borderSecondary, other.borderSecondary, t)!,
      foregroundDisabled: Color.lerp(
        foregroundDisabled,
        other.foregroundDisabled,
        t,
      )!,
      foregroundPrimary: Color.lerp(
        foregroundPrimary,
        other.foregroundPrimary,
        t,
      )!,
      foregroundSecondary: Color.lerp(
        foregroundSecondary,
        other.foregroundSecondary,
        t,
      )!,
      foregroundTertiary: Color.lerp(
        foregroundTertiary,
        other.foregroundTertiary,
        t,
      )!,
      foregroundInversePrimary: Color.lerp(
        foregroundInversePrimary,
        other.foregroundInversePrimary,
        t,
      )!,
      foregroundInverseSecondary: Color.lerp(
        foregroundInverseSecondary,
        other.foregroundInverseSecondary,
        t,
      )!,
      foregroundSystemAttention: Color.lerp(
        foregroundSystemAttention,
        other.foregroundSystemAttention,
        t,
      )!,
      foregroundSystemError: Color.lerp(
        foregroundSystemError,
        other.foregroundSystemError,
        t,
      )!,
      foregroundSystemInformative: Color.lerp(
        foregroundSystemInformative,
        other.foregroundSystemInformative,
        t,
      )!,
      foregroundSystemNeutral: Color.lerp(
        foregroundSystemNeutral,
        other.foregroundSystemNeutral,
        t,
      )!,
      foregroundSystemSuccess: Color.lerp(
        foregroundSystemSuccess,
        other.foregroundSystemSuccess,
        t,
      )!,
      interactionPrimaryEnabled: Color.lerp(
        interactionPrimaryEnabled,
        other.interactionPrimaryEnabled,
        t,
      )!,
      interactionPrimaryFocused: Color.lerp(
        interactionPrimaryFocused,
        other.interactionPrimaryFocused,
        t,
      )!,
      interactionPrimaryHovered: Color.lerp(
        interactionPrimaryHovered,
        other.interactionPrimaryHovered,
        t,
      )!,
      interactionPrimaryPressed: Color.lerp(
        interactionPrimaryPressed,
        other.interactionPrimaryPressed,
        t,
      )!,
      interactionSecondaryEnabled: Color.lerp(
        interactionSecondaryEnabled,
        other.interactionSecondaryEnabled,
        t,
      )!,
      interactionSecondaryFocused: Color.lerp(
        interactionSecondaryFocused,
        other.interactionSecondaryFocused,
        t,
      )!,
      interactionSecondaryHovered: Color.lerp(
        interactionSecondaryHovered,
        other.interactionSecondaryHovered,
        t,
      )!,
      interactionSecondaryPressed: Color.lerp(
        interactionSecondaryPressed,
        other.interactionSecondaryPressed,
        t,
      )!,
      opacity8: Color.lerp(opacity8, other.opacity8, t)!,
      opacity12: Color.lerp(opacity12, other.opacity12, t)!,
      opacity16: Color.lerp(opacity16, other.opacity16, t)!,
    );
  }
}

extension TextStyleColors on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle disabled(BuildContext context) =>
      withColor(context.colors.foregroundDisabled);

  TextStyle primary(BuildContext context) =>
      withColor(context.colors.foregroundPrimary);

  TextStyle secondary(BuildContext context) =>
      withColor(context.colors.foregroundSecondary);

  TextStyle tertiary(BuildContext context) =>
      withColor(context.colors.foregroundTertiary);

  TextStyle inversePrimary(BuildContext context) =>
      withColor(context.colors.foregroundInversePrimary);

  TextStyle inverseSecondary(BuildContext context) =>
      withColor(context.colors.foregroundInverseSecondary);

  TextStyle systemAttention(BuildContext context) =>
      withColor(context.colors.foregroundSystemAttention);

  TextStyle systemError(BuildContext context) =>
      withColor(context.colors.foregroundSystemError);

  TextStyle systemInformative(BuildContext context) =>
      withColor(context.colors.foregroundSystemInformative);

  TextStyle systemNeutral(BuildContext context) =>
      withColor(context.colors.foregroundSystemNeutral);

  TextStyle systemSuccess(BuildContext context) =>
      withColor(context.colors.foregroundSystemSuccess);
}
