import 'package:flutter/material.dart';

/// A bubble widget with a triangle pointer at the bottom center
class Bubble extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double triangleHeight;
  final double triangleWidth;

  const Bubble({
    super.key,
    required this.child,
    this.color = Colors.blueAccent,
    this.borderRadius = 16.0,
    this.triangleHeight = 12.0,
    this.triangleWidth = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.all(18.0),
          child: Center(child: child),
        ),
        CustomPaint(
          size: Size(triangleWidth, triangleHeight),
          painter: _TrianglePainter(color),
        ),
      ],
    );
  }
}

class _TrianglePainter extends CustomPainter {
  final Color color;

  _TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
