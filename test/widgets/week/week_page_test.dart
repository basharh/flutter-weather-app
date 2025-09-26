import 'package:flutter_test/flutter_test.dart';
import 'package:weather/main.dart';
import 'package:weather/widgets/common/hour_weather/hour_weather.dart';
import 'package:weather/widgets/week/daily_weather_card.dart';

import 'package:weather/widgets/week/days_column.dart';
import 'package:weather/widgets/week/hours_row.dart';

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
        find.byType(HourWeather).at(1),
        const Offset(-300, 0),
        3000,
      );

      await tester.pumpAndSettle();

      expect(
        tester.widget(find.byType(HourWeather).last),
        isA<HourWeather>(),
      );
    });
  });

  group('DaysColumn', () {
    testWidgets(
      'renders 7 DailyWeatherCard widgets',
      (WidgetTester tester) async {
        await tester.pumpWidget(const WeatherApp(
          initialRoute: '/week',
        ));

        expect(find.byType(DailyWeatherCard), findsExactly(7));
      },
    );
  });
}
