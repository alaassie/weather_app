import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search City')),
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
            ),
          ),
        ),
      ),
    );
  }
}
