// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Weathericon extends StatelessWidget {
  Weather? weather;

  Weathericon({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "http://openweathermap.org/img/wn/${weather!.weatherIcon}@4x.png",
              ),
            ),
          ),
        ),
        Text(
          weather?.weatherDescription ?? "no description",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
