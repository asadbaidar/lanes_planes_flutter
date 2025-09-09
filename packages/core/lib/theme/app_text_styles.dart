import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Typography System with Inter Font Family
class AppTextStyles {
  AppTextStyles({String fontFamily = 'Inter', required Color color})
      : baseStyle = GoogleFonts.getFont(fontFamily, color: color);

  final TextStyle baseStyle;

  // Display Large
  TextStyle get displayLarge => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 40,
        height: 48 / 40, // line-height / font-size
        letterSpacing: 0,
      );

  // Display Medium
  TextStyle get displayMedium => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 36,
        height: 42 / 36,
        letterSpacing: 0,
      );

  // Display Small
  TextStyle get displaySmall => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 32,
        height: 38 / 32,
        letterSpacing: 0,
      );

  // Headline Large
  TextStyle get headlineLarge => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 28,
        height: 32 / 28,
        letterSpacing: 0,
      );

  // Headline Medium
  TextStyle get headlineMedium => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 28 / 24,
        letterSpacing: 0,
      );

  // Headline Small
  TextStyle get headlineSmall => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 24 / 20,
        letterSpacing: 0,
      );

  // Title Large
  TextStyle get titleLarge => baseStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        height: 28 / 24,
        letterSpacing: 0,
      );

  // Title Medium
  TextStyle get titleMedium => baseStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        height: 24 / 20,
        letterSpacing: 0,
      );

  // Title Small
  TextStyle get titleSmall => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0,
      );

  // Label Large
  TextStyle get labelLarge => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0,
      );

  // Label Medium
  TextStyle get labelMedium => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0,
      );

  // Label Small
  TextStyle get labelSmall => baseStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 11,
        height: 16 / 11,
        letterSpacing: 0,
      );

  // Body Large
  TextStyle get bodyLarge => baseStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0,
      );

  // Body Medium
  TextStyle get bodyMedium => baseStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0,
      );

  // Body Small
  TextStyle get bodySmall => baseStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0,
      );
}
