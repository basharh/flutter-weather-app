import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/services/google_places.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/google_places/data.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/utils/init.dart';
import 'package:weather/widgets/common/hours_row.dart';
import 'package:weather/widgets/common/layout/layout.dart';
import 'package:weather/widgets/day/day_details_card/day_details_card.dart';

class DayPage extends ConsumerWidget {
  const DayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openMateoService = ref.read(openMateoServiceProvider);
    final googlePlacesService = ref.read(googlePlacesServiceProvider);
    final position = ref.read(initInfoProvider).position;

    return Layout(
      title: 'Day at a Glance',
      child: FutureBuilder(
        future: Future.wait([
          openMateoService.fetchHourly(
            position.latitude,
            position.longitude,
          ),
          googlePlacesService.fetchNearbyLocalities(
            position.latitude,
            position.longitude,
          ),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred'),
            );
          }

          final hourlyData = snapshot.data?[0] as Map<String, HourlyData>;
          final localities = snapshot.data?[1] as List<Place>;

          final localityName =
              localities.isNotEmpty && localities.first.displayName != null
                  ? localities.first.displayName?.text
                  : 'Unknown';

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: DayDetailsCard(
                  hourlyData: hourlyData,
                  localityName: localityName!,
                ),
              ),
              const SizedBox(height: 20),
              HoursRow(hourlyData: hourlyData),
            ],
          );
        },
      ),
    );
  }
}
