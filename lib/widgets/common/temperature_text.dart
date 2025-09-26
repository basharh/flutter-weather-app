import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  final double temperature;
  final double fontSize;

  const TemperatureText({
    super.key,
    required this.temperature,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${temperature.toStringAsFixed(1)}°',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
