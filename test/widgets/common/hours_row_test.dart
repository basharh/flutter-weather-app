import 'package:flutter_test/flutter_test.dart';
import 'package:weather/widgets/common/hours_row.dart';

import '../../utils/data.dart';
import '../../utils/test_material_app.dart';

void main() {
  group('HoursRow', () {
    testWidgets('golden test', (tester) async {
      await tester.setScreenSize(width: 400, height: 150);

      final hourlyData = getDummyHourlyData();

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
