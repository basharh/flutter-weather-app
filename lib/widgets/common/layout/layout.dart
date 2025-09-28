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
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: actions,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
