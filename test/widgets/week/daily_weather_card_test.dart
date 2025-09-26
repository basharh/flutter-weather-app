import 'package:flutter_test/flutter_test.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/week/daily_weather_card.dart';

import '../../utils/test_material_app.dart';

void main() {
  group('DailyWeatherCard', () {
    testWidgets('golden test', (tester) async {
      await tester.setScreenSize(width: 300, height: 100);

      await tester.pumpWidget(
        TestMaterialApp(
          child: DailyWeatherCard(
            day: '2024-10-10',
            dailyData: DailyData(
              time: '2024-10-10',
              temperature_2m_min: 12.0,
              temperature_2m_max: 25.0,
              weather_code: 30,
            ),
          ),
        ),
      );

      await expectLater(
        find.byType(TestMaterialApp),
        matchesGoldenFile('golden/daily_weather_card.png'),
      );
    });
  });
}
