import 'package:core/theme/theme.dart';
import 'package:flutter/material.dart';

/// Design Tokens
class DesignTokens {
  // Primitive Colors
  static const Color baseBlack = Color(0xFF191F25);
  static const Color baseWhite = Color(0xFFFFFFFF);

  static const Color grey50 = Color(0xFFF4F8FC);
  static const Color grey100 = Color(0xFFEDF1F5);
  static const Color grey300 = Color(0xFFC5CFDB);
  static const Color grey500 = Color(0xFF7B8694);
  static const Color grey600 = Color(0xFF666F7A);
  static const Color grey800 = Color(0xFF3A3F45);

  static const Color blue600 = Color(0xFF2D67B2);
  static const Color blue800 = Color(0xFF022C63);
  static const Color blue900 = Color(0xFF011B3D);

  static const Color red600 = Color(0xFFDD3728);
  static const Color red700 = Color(0xFFC73224);
  static const Color red800 = Color(0xFFB12C20);

  /// Semantic Colors - Light Theme
  static const SemanticColors lightColors = SemanticColors(
    // Background
    backgroundPrimary: baseWhite,
    backgroundSecondary: grey50,
    backgroundTertiary: grey100,
    // Background Inverse
    backgroundInversePrimary: blue900,
    backgroundInverseSecondary: blue800,
    // Background System
    backgroundSystemAttention: Color(0xFFFBF0BC),
    backgroundSystemError: Color(0xFFFFE5E8),
    backgroundSystemInformative: Color(0xFFEAF3FE),
    backgroundSystemNeutral: grey100,
    backgroundSystemSuccess: Color(0xFFDEF8E3),
    // Border
    borderPrimary: baseBlack,
    borderSecondary: grey100,
    // Foreground
    foregroundDisabled: Color(0x4D191F25),
    foregroundPrimary: baseBlack,
    foregroundSecondary: grey800,
    foregroundTertiary: grey600,
    // Foreground Inverse
    foregroundInversePrimary: baseWhite,
    foregroundInverseSecondary: grey100,
    // Foreground System
    foregroundSystemAttention: Color(0xFFC27500),
    foregroundSystemError: Color(0xFFBC1D3B),
    foregroundSystemInformative: Color(0xFF0D4FA5),
    foregroundSystemNeutral: grey600,
    foregroundSystemSuccess: Color(0xFF077237),
    // Interaction Primary
    interactionPrimaryEnabled: red600,
    interactionPrimaryFocused: red800,
    interactionPrimaryHovered: red700,
    interactionPrimaryPressed: red700,
    // Interaction Secondary
    interactionSecondaryEnabled: blue900,
    interactionSecondaryFocused: blue600,
    interactionSecondaryHovered: blue800,
    interactionSecondaryPressed: blue800,
    // Opacity
    opacity8: Color(0x14000000),
    opacity12: Color(0x1F000000),
    opacity16: Color(0x29000000),
  );

  /// Spacing Tokens
  static const AppSpacing spacing = AppSpacing(
    v2: 2.0,
    v4: 4.0,
    v8: 8.0,
    v12: 12.0,
    v16: 16.0,
    v20: 20.0,
    v24: 24.0,
    v32: 32.0,
    v40: 40.0,
  );

  /// Shape (Corner Radius) Tokens
  static const AppRadius radius = AppRadius(
    none: 0.0,
    extraSmall: 2.0,
    small: 4.0,
    medium: 8.0,
    large: 12.0,
    rounded: 1000.0,
  );
}
