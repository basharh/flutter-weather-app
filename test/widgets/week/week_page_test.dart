import 'package:flutter_test/flutter_test.dart';
import 'package:weather/main.dart';

import 'package:weather/pages/week.dart';
import 'package:weather/widgets/common/hourly_weather/hourly_weather.dart';
import 'package:weather/widgets/week/day.dart';

void main() {
  group('WeekPage', () {
    testWidgets('renders hours row', (WidgetTester tester) async {
      await tester.pumpWidget(const WeatherApp(
        initialRoute: '/week',
      ));

      expect(find.byType(HoursRow), findsOneWidget);
    });

    testWidgets('renders days column', (WidgetTester tester) async {
      await tester.pumpWidget(const WeatherApp(
        initialRoute: '/week',
      ));

      expect(find.byType(DaysColumn), findsOneWidget);
    });
  });

  group('HoursRow', () {
    testWidgets('renders 24 HourlyWeather widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(const WeatherApp(
        initialRoute: '/week',
      ));

      await tester.fling(
        find.byType(HourlyWeather).at(1),
        const Offset(-300, 0),
        3000,
      );

      await tester.pumpAndSettle();

      expect(
        tester.widget(find.byType(HourlyWeather).last),
        isA<HourlyWeather>().having((t) => t.index, 'index', 23),
      );
    });
  });

  group('DaysColumn', () {
    testWidgets('renders 7 DailyWeather widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const WeatherApp(
        initialRoute: '/week',
      ));

      expect(find.byType(DailyWeather), findsExactly(7));
    });
  });
}
