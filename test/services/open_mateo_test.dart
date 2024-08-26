import 'package:dio/dio.dart' as dio;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather/services/open_mateo.dart';

import 'open_mateo_test.mocks.dart';

@GenerateMocks([dio.Dio])
void main() {
  test('fetch()', () async {
    final client = MockDio();
    final service = OpenMateoService(client);

    var data = {
      "hourly": {
        "time": ["2022-07-01T00:00", "2022-07-01T01:00", "2022-07-01T02:00"],
        "temperature_2m": [13, 12.7, 12.7, 12.5, 12.5, 12.8, 13, 12.9, 13.3]
      }
    };

    when(client.get('https://open-meteo.com/en/docs#hourly=temperature_2m'))
        .thenAnswer(
      (_) async => dio.Response(
        data: data,
        statusCode: 200,
        requestOptions: dio.RequestOptions(),
      ),
    );

    final response = await service.fetch();

    expect(response, isA<ForecastResponse>());
    expect(response.hourly, isA<HourlyData>());
    expect(response.hourly?.time, isA<List<String>>());
    expect(response.hourly?.temperature_2m, isA<List<double>>());
    expect(response.hourly?.time?.length, 3);
    expect(response.hourly?.temperature_2m?.length, 9);
  });
}
