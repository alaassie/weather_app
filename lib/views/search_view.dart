import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
=======
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
<<<<<<< HEAD
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              onSubmitted: (cityName) async {
                var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: cityName);
                Navigator.pop(context);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search City Name',
                labelText: 'Search City Name',
              ),
=======
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search City Name',
              labelText: 'Search City Name',
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
            ),
          ),
        ),
      ),
<<<<<<< HEAD
    );
=======
    ));
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
  }
}
