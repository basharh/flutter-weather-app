import 'package:flutter/material.dart';

class TimeText extends StatelessWidget {
  final String time;
  final TextStyle? style;

  const TimeText({
    super.key,
    required this.time,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        '$time PM',
        style: Theme.of(context).textTheme.bodySmall?.merge(style),
      ),
    );
  }
}
