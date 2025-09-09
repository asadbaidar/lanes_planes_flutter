import 'package:core/theme/theme.dart';
import 'package:core/utils/utils.dart';
import 'package:flutter/material.dart';


const kDefaultToolbarHeight = 64.0;
const kDefaultElementSize = 48.0;

/// App Theme Class
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Light Theme Configuration
  static ThemeData get lightTheme {
    final SemanticColors colors = DesignTokens.lightColors;
    final textStyles = AppTextStyles(color: colors.foregroundPrimary);
    final spacing = DesignTokens.spacing;
    final foregroundColor =
        WidgetStateColor.fromMap(<WidgetStatesConstraint, Color>{
          WidgetState.focused: colors.interactionSecondaryFocused,
          WidgetState.hovered: colors.interactionSecondaryHovered,
          WidgetState.pressed: colors.interactionSecondaryPressed,
          WidgetState.disabled: colors.foregroundDisabled,
          WidgetState.any: colors.interactionSecondaryEnabled,
        });
    return ThemeData(
      useMaterial3: true,
      dividerTheme: DividerThemeData(space: 1),

      // Extensions
      extensions: [spacing, DesignTokens.radius, colors],

      // Color Scheme
      colorScheme: ColorScheme.light(
        primary: colors.interactionSecondaryEnabled,
        onPrimary: colors.foregroundInversePrimary,
        secondary: colors.interactionPrimaryEnabled,
        onSecondary: colors.foregroundInversePrimary,
        surface: colors.backgroundPrimary,
        onSurface: colors.foregroundPrimary,
        error: colors.foregroundSystemError,
        onError: colors.foregroundInversePrimary,
        outline: colors.borderPrimary,
        outlineVariant: colors.borderSecondary,
      ),

      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colors.backgroundPrimary,
        foregroundColor: colors.foregroundPrimary,
        toolbarHeight: kDefaultToolbarHeight,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: textStyles.titleSmall,
      ),

      // Icon Button Theme
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateColor.resolveWith(
            (states) => states.isPressed || states.isHovered || states.isFocused
                ? colors.backgroundTertiary
                : Colors.transparent,
          ),
          foregroundColor: foregroundColor,
          overlayColor: WidgetStateColor.resolveWith(
            (states) => states.isPressed || states.isHovered || states.isFocused
                ? colors.backgroundTertiary
                : Colors.transparent,
          ),
          elevation: ButtonStyleButton.allOrNull(0),
          padding: ButtonStyleButton.allOrNull(EdgeInsets.all(spacing.v8)),
          minimumSize: ButtonStyleButton.allOrNull(Size.square(40)),
          fixedSize: ButtonStyleButton.allOrNull(Size.square(40)),
          maximumSize: ButtonStyleButton.allOrNull(Size.square(40)),
          iconSize: ButtonStyleButton.allOrNull(24),
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),
      iconTheme: IconThemeData(
        size: 24,
        color: colors.interactionSecondaryEnabled,
      ),
      primaryIconTheme: IconThemeData(
        size: 24,
        color: colors.interactionSecondaryEnabled,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: foregroundColor,
          iconSize: ButtonStyleButton.allOrNull(24),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationThemeData(
        hintStyle: textStyles.bodyLarge.withColor(colors.foregroundTertiary),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.foregroundPrimary,
      ),

      // Typography
      textTheme: TextTheme(
        displayLarge: textStyles.displayLarge,
        displayMedium: textStyles.displayMedium,
        displaySmall: textStyles.displaySmall,
        headlineLarge: textStyles.headlineLarge,
        headlineMedium: textStyles.headlineMedium,
        headlineSmall: textStyles.headlineSmall,
        titleLarge: textStyles.titleLarge,
        titleMedium: textStyles.titleMedium,
        titleSmall: textStyles.titleSmall,
        labelLarge: textStyles.labelLarge,
        labelMedium: textStyles.labelMedium,
        labelSmall: textStyles.labelSmall,
        bodyLarge: textStyles.bodyLarge,
        bodyMedium: textStyles.bodyMedium,
        bodySmall: textStyles.bodySmall,
      ),
    );
  }

  /// Dark Theme Configuration (if needed in the future)
  static ThemeData get darkTheme {
    // For now, return light theme. Can be implemented later if needed.
    return lightTheme;
  }
}

/// Helper functions to access theme extensions
extension ThemeDataX on ThemeData {
  AppSpacing get spacing => extension<AppSpacing>()!;
  AppRadius get radius => extension<AppRadius>()!;
  SemanticColors get colors => extension<SemanticColors>()!;
}

/// Helper functions to access theme extensions
extension ThemeContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppSpacing get spacing => theme.spacing;
  AppRadius get radius => theme.radius;
  SemanticColors get colors => theme.colors;
  TextTheme get textTheme => theme.textTheme;
}
