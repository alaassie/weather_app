import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/api_service/weather_service.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/model/weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialWeatherState());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      if (weatherModel == null || weatherModel.cityName == null) {
        throw Exception('Invalid weather data received');
      }

      emit(WeatherLoadedState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
      print('Error loading weather data: $e');
    }
  }
}
