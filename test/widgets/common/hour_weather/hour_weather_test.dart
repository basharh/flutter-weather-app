import 'package:flutter_test/flutter_test.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/hour_weather/hour_weather.dart';

import '../../../utils/test_material_app.dart';

void main() {
  group('HourWeather', () {
    testWidgets('golden test', (tester) async {
      await tester.setScreenSize(width: 100, height: 150);

      await tester.pumpWidget(
        TestMaterialApp(
          child: HourWeather(
            hourlyData: HourlyData(
              weather_code: 11,
              time: '2024-10-10T14:00',
              temperature_2m: 22.5,
            ),
            hour: '2024-10-10T14:00',
          ),
        ),
      );

      await expectLater(
        find.byType(TestMaterialApp),
        matchesGoldenFile('golden/hour_weather.png'),
      );
    });
  });
}
