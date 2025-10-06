import 'package:dio/dio.dart' as dio;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/services/open_mateo/open_mateo.dart';

import 'open_mateo_test.mocks.dart';

@GenerateMocks([dio.Dio])
void main() {
  test('fetchHourly()', () async {
    final client = MockDio();
    final service = OpenMateoService(client);

    var data = {
      "hourly": {
        "time": ["2022-07-01T00:00", "2022-07-01T01:00", "2022-07-01T02:00"],
        "temperature_2m": [13, 12.7, 12.7, 12.5, 12.5, 12.8, 13, 12.9, 13.3]
      }
    };

    when(client.get(any)).thenAnswer(
      (_) async => dio.Response(
        data: data,
        statusCode: 200,
        requestOptions: dio.RequestOptions(),
      ),
    );

    final response = await service.fetchHourly(
      latitude: 52.52,
      longitude: 13.405,
      timezone: 'America/New_York',
    );

    // TODO: verify that the get method was called with the correct URL

    expect(response, isA<Map<String, HourlyData>>());
    expect(response.length, 3);

    for (var i = 0; i < data["hourly"]!["time"]!.length; i++) {
      final time = data["hourly"]!["time"]![i];
      final hourlyData = response[time];
      expect(hourlyData, isA<HourlyData>());
      expect(hourlyData?.time, time);
      expect(hourlyData?.temperature_2m, data["hourly"]!["temperature_2m"]![i]);
    }
  });

  test('fetchDaily()', () async {
    final client = MockDio();
    final service = OpenMateoService(client);

    var data = {
      "daily": {
        "time": [
          "2024-08-30",
          "2024-08-31",
          "2024-09-01",
          "2024-09-02",
          "2024-09-03",
          "2024-09-04",
          "2024-09-05"
        ],
        "temperature_2m_min": [14.9, 14.4, 13.0, 15.4, 19.8, 20.3, 18.9],
        "temperature_2m_max": [27.4, 22.3, 25.0, 29.8, 30.4, 31.6, 31.0],
        "weather_code": [95, 95, 3, 3, 80, 3, 2]
      }
    };

    when(client.get(any)).thenAnswer(
      (_) async => dio.Response(
        data: data,
        statusCode: 200,
        requestOptions: dio.RequestOptions(),
      ),
    );

    final response = await service.fetchDaily(
      latitude: 52.52,
      longitude: 13.405,
      timezone: 'America/New_York',
    );

    expect(response, isA<Map<String, DailyData>>());
    expect(response.length, 7);

    for (var i = 0; i < data["daily"]!["time"]!.length; i++) {
      final time = data["daily"]!["time"]![i];
      final dailyData = response[time];
      expect(dailyData, isA<DailyData>());
      expect(dailyData?.time, time);

      expect(
        dailyData?.temperature_2m_min,
        data["daily"]!["temperature_2m_min"]![i],
      );

      expect(
        dailyData?.temperature_2m_max,
        data["daily"]!["temperature_2m_max"]![i],
      );

      expect(
        dailyData?.weather_code,
        data["daily"]!["weather_code"]![i],
      );
    }
  });
}
