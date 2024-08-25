import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final List<Widget>? actions;
  final String title;

  const Layout({
    super.key,
    required this.child,
    this.actions,
    this.title = 'Weather App',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: actions,
      ),
      body: Center(
        child: child,
      ),
    );
  }
}
