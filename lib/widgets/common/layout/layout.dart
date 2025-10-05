import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/brightness_mode.dart';

class _MapIconButton extends ConsumerWidget {
  const _MapIconButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.map_outlined),
      onPressed: () {
        Navigator.pushNamed(context, '/map');
      },
      tooltip: 'Open Map',
    );
  }
}

class _LightDarkSwitcherIcon extends ConsumerWidget {
  const _LightDarkSwitcherIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: Icon(
        Theme.of(context).brightness == Brightness.dark
            ? Icons.dark_mode
            : Icons.light_mode,
      ),
      onPressed: () {
        ref.read(brightness.notifier).toggle();
      },
      tooltip: 'Switch Light/Dark Mode',
    );
  }
}

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
        actions: [
          ...?actions,
          const _LightDarkSwitcherIcon(),
          const _MapIconButton(),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20)
            .copyWith(top: 0),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
