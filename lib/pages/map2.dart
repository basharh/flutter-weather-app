import 'package:flutter/material.dart';
import 'package:weather/widgets/map/weather_map.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeatherMap(),
    );
  }
}
