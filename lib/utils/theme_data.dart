import 'package:flutter/material.dart';

ThemeData getThemeData(Brightness brightness) {
  return ThemeData(
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: brightness,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 10),
    ),
    useMaterial3: true,
  );
}
