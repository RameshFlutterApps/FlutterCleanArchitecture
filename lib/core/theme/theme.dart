import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blue.shade700,
    // Primary color (Light theme)
    onPrimary: Colors.white,
    secondary: Colors.blue.shade700,
    // Secondary color (Light theme)
    onSecondary: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  // Background color for light theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue, // AppBar color (Light theme)
  ),
  textTheme: TextTheme(
    // Display styles (Large and impactful text)
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: -0.5,
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w600,
      color: Colors.black54,
    ),

    // Headline styles (Prominent titles)
    headlineLarge: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),

    // Title styles (Section headings)
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: Colors.blueGrey,
    ),
    titleMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey[600],
    ),
    titleSmall: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey[700],
    ),

    // Body text styles (Regular text)
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.black54,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black45,
    ),

    // Label styles (Small text for buttons, labels, etc.)
    labelLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.0,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF17b49d),
    // Primary color (Dark theme)
    onPrimary: Colors.black,
    secondary: Color(0xFF03DAC6),
    // Secondary color (Dark theme)
    onSecondary: Colors.black,
    surface: Color(0xFF121212),
    // Surface color (Dark theme)
    onSurface: Colors.white,
    error: Colors.redAccent,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: Color(0xFF121212),
  // Background color for dark theme
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF17b49d), // AppBar color (Dark theme)
  ),
  textTheme: TextTheme(
    // Display styles (Large and impactful text)
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: -0.5,
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    // Headline styles (Prominent titles)
    headlineLarge: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),

    // Title styles (Section headings)
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    // Body text styles (Regular text)
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

    // Label styles (Small text for buttons, labels, etc.)
    labelLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.0,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
);
