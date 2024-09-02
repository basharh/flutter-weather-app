import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  final double temperature;

  const TemperatureText({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: Text(
          '${temperature.toStringAsFixed(1)}°',
          textAlign: TextAlign.center,
          style: const TextStyle(),
        ),
      ),
    );
  }
}
