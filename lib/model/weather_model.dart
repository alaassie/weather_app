class WeatherModel {
  final String cityName;
  final String date;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String status;

  WeatherModel({required this.cityName, required this.date, required this.temp, required this.maxTemp, required this.minTemp, required this.status});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      cityName: json["location"]["name"],
      date: json["forecast"]["forecastday[0]"]["date"],
      temp: json["current"]["temp_c"],
      maxTemp: json["forecast"]["forecastday[0]"]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday[0]"]["day"]["mintemp_c"],
      status: json["forecast"]["forecastday[0]"]["day"]["condition"]["text"]);
}
