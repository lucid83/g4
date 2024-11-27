import 'package:flutter/material.dart';
import 'package:g4/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
        colorScheme: colorScheme,
        canvasColor: colorScheme.surface,
        scaffoldBackgroundColor: colorScheme.surface,
        highlightColor: Colors.transparent,
        focusColor: focusColor,
        // primaryTextTheme: TextTheme(
        //   titleLarge: GoogleFonts.outfit(
        //     fontSize: 40,
        //     fontWeight: FontWeight.w600,
        //     height: 1.2,
        //   ),
        //   titleMedium: GoogleFonts.outfit(
        //     fontSize: 34,
        //     fontWeight: FontWeight.w600,
        //     height: 1.2,
        //   ),
        //   titleSmall: GoogleFonts.outfit(
        //     fontSize: 28,
        //     fontWeight: FontWeight.w600,
        //   ),
        //   headlineLarge: GoogleFonts.outfit(
        //     fontSize: 20,
        //   ),
        //   headlineMedium: GoogleFonts.outfit(
        //     fontSize: 18,
        //   ),
        //   bodyLarge: GoogleFonts.outfit(
        //     fontSize: 18,
        //   ),
        //   bodyMedium: GoogleFonts.outfit(
        //     fontSize: 16,
        //   ),
        //   bodySmall: GoogleFonts.outfit(
        //     fontSize: 14,
        //   ),
        //   labelLarge: GoogleFonts.outfit(
        //     fontSize: 20,
        //     fontWeight: FontWeight.w600,
        //   ),
        //   labelMedium: GoogleFonts.outfit(
        //     fontSize: 18,
        //     fontWeight: FontWeight.w600,
        //   ),
        //   labelSmall: GoogleFonts.outfit(
        //     fontSize: 16,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.outfit(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
          titleMedium: GoogleFonts.outfit(
            fontSize: 34,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
          titleSmall: GoogleFonts.outfit(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          headlineLarge: GoogleFonts.outfit(
            fontSize: 20,
          ),
          headlineMedium: GoogleFonts.outfit(
            fontSize: 18,
          ),
          bodyLarge: GoogleFonts.outfit(
            fontSize: 18,
          ),
          bodyMedium: GoogleFonts.outfit(
            fontSize: 16,
          ),
          bodySmall: GoogleFonts.outfit(
            fontSize: 14,
          ),
          labelLarge: GoogleFonts.outfit(
            fontSize: 20,
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w600,
          ),
          labelMedium: GoogleFonts.outfit(
            fontSize: 18,
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
          labelSmall: GoogleFonts.outfit(
            fontSize: 16,
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
        ));
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.nature,
    onPrimary: Colors.white,
    secondary: AppColors.ground,
    onSecondary: Colors.black,
    error: Colors.redAccent,
    onError: Colors.white,
    // background: Color(0xFFE6EBEB),
    // onBackground: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF222122),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: AppColors.nature,
    onPrimary: Colors.white,
    secondary: AppColors.ground,
    onSecondary: Colors.black,
    error: Colors.redAccent,
    onError: Colors.white,
    // background: Color(0xFFE6EBEB),
    // onBackground: Colors.white,
    surface: Color(0xFF222122),
    onSurface: Color(0xFFFAFBFB),
    brightness: Brightness.dark,
  );
}
