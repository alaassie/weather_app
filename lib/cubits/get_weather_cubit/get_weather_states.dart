import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class InitialWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState(this.weatherModel);
  final WeatherModel weatherModel;
}

class WeatherFailureState extends WeatherState {
  final String errorMessage;

  WeatherFailureState(this.errorMessage);
}
