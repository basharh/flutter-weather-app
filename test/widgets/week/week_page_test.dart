import 'package:flutter_test/flutter_test.dart';
import 'package:weather/main.dart';

import 'package:weather/pages/week.dart';

void main() {
  group('WeekPage', () {
    testWidgets('renders hours row', (WidgetTester tester) async {
      await tester.pumpWidget(const WeatherApp(
        initialRoute: '/week',
      ));

      expect(find.byType(HoursRow), findsOneWidget);
      expect(find.byType(DaysColumn), findsOneWidget);
    });
  });
}
