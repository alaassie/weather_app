import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';
=======
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () {
<<<<<<< HEAD
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchView();
                    },
=======
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
<<<<<<< HEAD
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return const WeatherInfoBody();
          } else {
            return const Text('Opps, There was an error');
          }
        },
      ),
=======
      body: const NoWeatherBody(),
>>>>>>> f6a7f58686df7363b245d4b0b3aad658fb11ca86
    );
  }
}
