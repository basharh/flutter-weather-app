import 'package:flutter_test/flutter_test.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/hours_row.dart';

import '../../utils/test_material_app.dart';

void main() {
  group('HoursRow', () {
    testWidgets('golden test', (tester) async {
      await tester.setScreenSize(width: 400, height: 150);

      var start = DateTime.parse('2024-10-10T00:00');

      // Create hourly data for 24 hours
      Map<String, HourlyData> hourlyData = {};

      for (int i = 0; i < 24; i++) {
        var time = start.add(Duration(hours: i));
        var timeString = time.toIso8601String().substring(0, 16);
        hourlyData[timeString] = HourlyData(
          weather_code:
              (i % 12) * 10, // Just a sample pattern for weather codes
          time: timeString,
          temperature_2m:
              15.0 + i, // Sample temperature increasing over the day
        );
      }

      await tester.pumpWidget(
        TestMaterialApp(
          child: HoursRow(
            hourlyData: hourlyData,
          ),
        ),
      );

      await expectLater(
        find.byType(TestMaterialApp),
        matchesGoldenFile('golden/hours_row.png'),
      );
    });
  });
}
