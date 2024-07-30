import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  WeatherService(this.dio);

  final Dio dio;
  final String apiKey = '96f66beca685464493a104350240203';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');

    var logger = Logger();
    logger.i(response.statusCode);

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
