import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  final double temperature;
  final TextStyle? style;

  const TemperatureText({
    super.key,
    required this.temperature,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${temperature.toStringAsFixed(1)}°',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall?.merge(style),
    );
  }
}
