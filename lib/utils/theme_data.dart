import 'package:flutter/material.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.light,
);

final themeData = ThemeData(
  fontFamily: 'Roboto',
  colorScheme: colorScheme,
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 10),
  ),
  useMaterial3: true,
);

final lightTextStyle = themeData.textTheme.copyWith(
  bodySmall: themeData.textTheme.bodySmall?.copyWith(color: Colors.white),
  bodyMedium: themeData.textTheme.bodyMedium?.copyWith(color: Colors.white),
);
