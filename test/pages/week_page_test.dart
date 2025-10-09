import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather/pages/week_page.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/open_mateo/open_mateo.dart';
import 'package:weather/widgets/common/hour_weather/hour_weather.dart';
import 'package:weather/widgets/common/hours_row.dart';
import 'package:weather/widgets/week/daily_weather_card.dart';

import 'package:weather/widgets/week/days_column.dart';

import '../utils/data.dart';
import '../utils/mocks.mocks.dart';
import '../utils/test_material_app.dart';

void main() {
  group('WeekPage', () {
    final OpenMateoService mockOpenMateoService = MockOpenMateoService();

    setUp(() {
      when(
        mockOpenMateoService.fetchDaily(
          timezone: 'America/New_York',
          latitude: 40.7128,
          longitude: -74.0060,
        ),
      ).thenAnswer((_) async => getDummyDailyData());

      when(
        mockOpenMateoService.fetchHourly(
          timezone: 'America/New_York',
          latitude: 40.7128,
          longitude: -74.0060,
        ),
      ).thenAnswer((_) async {
        return getDummyHourlyData();
      });
    });

    Future<void> renderWeekPage(WidgetTester tester) async {
      // iphone xs display size in logical pixels
      await tester.setScreenSize(width: 375, height: 812);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            openMateoServiceProvider.overrideWithValue(mockOpenMateoService),
          ],
          child: const TestMaterialApp(
            page: true,
            child: WeekPage(),
          ),
        ),
      );

      await tester.pumpAndSettle();
    }

    testWidgets('renders hours row', (WidgetTester tester) async {
      await renderWeekPage(tester);

      expect(find.byType(HoursRow), findsOneWidget);
    });

    testWidgets('renders days column', (WidgetTester tester) async {
      await renderWeekPage(tester);

      expect(find.byType(DaysColumn), findsOneWidget);
    });

    testWidgets('renders 24 HourlyWeather widgets',
        (WidgetTester tester) async {
      await renderWeekPage(tester);

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

    testWidgets(
      'renders 7 DailyWeatherCard widgets',
      (WidgetTester tester) async {
        await renderWeekPage(tester);

        expect(find.byType(DailyWeatherCard), findsExactly(7));
      },
    );
  });
}
