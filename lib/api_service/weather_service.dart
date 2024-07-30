import 'package:dio/dio.dart';
<<<<<<< HEAD
import 'package:logger/logger.dart';
=======
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  WeatherService(this.dio);

  final Dio dio;
  final String apiKey = '96f66beca685464493a104350240203';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
<<<<<<< HEAD
    Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');

    var logger = Logger();
    logger.i(response.statusCode);
=======
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
