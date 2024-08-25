import 'package:flutter/material.dart';

class TimeText extends StatelessWidget {
  final String time;

  const TimeText({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        '$time PM',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );
  }
}
