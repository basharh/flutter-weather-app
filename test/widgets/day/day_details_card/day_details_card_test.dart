import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/widgets/day/day_details_card/day_details_card.dart';

import '../../../utils/data.dart';
import '../../../utils/test_material_app.dart';

void main() {
  group('DayDetailsCard', () {
    testWidgets('golden test', (tester) async {
      await tester.setScreenSize(width: 250, height: 350);

      // need to await to get any errors
      await withClock(Clock.fixed(DateTime(2025, 10, 27, 11, 30, 0)), () async {
        await tester.pumpWidget(
          TestMaterialApp(
            child: DayDetailsCard(
              hourlyData: getDummyHourlyData(),
              localityName: 'New York',
            ),
          ),
        );

        await expectLater(
          find.byType(TestMaterialApp),
          matchesGoldenFile('golden/day_details_card.png'),
        );
      });
    });
  });
}
