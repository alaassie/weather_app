import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/api_service/weather_service.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/model/weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());

  getWeather({required String cityName}) async {
    try {
<<<<<<< HEAD
      WeatherModel weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedState(weatherModel));
=======
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedState());
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
