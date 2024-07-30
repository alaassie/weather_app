import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState(this.weatherModel);
  final WeatherModel weatherModel;
}

class WeatherFailureState extends WeatherState {}
