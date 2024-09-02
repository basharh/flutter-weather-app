import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Row(
          children: [
            Text('Gotham'),
            Text('Today 00:32 PM'),
          ],
        ),
        Text('32°'),
        Text('Mostly Cloudy'),
        Row(
          children: [
            Text('Air Pressure: 1013 hPa'),
            Text('Humidity: 50%'),
            Text('Wind: 5 km/h'),
          ],
        ),
      ],
    );
  }
}
