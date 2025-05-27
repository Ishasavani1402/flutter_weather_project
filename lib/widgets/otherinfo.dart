// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_project/widgets/custome_container.dart';

class Otherinfo extends StatelessWidget {
  Weather? weather;

  Otherinfo({required this.weather});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomeContainer(
            weather: weather,
            textspan1: "MinTemp :",
            textspandiscp1: " ${weather!.tempMin!.toString()}",
            textspan2: "MaxTemp :",
            textspandiscp2: " ${weather!.tempMax!}",
          ),
          SizedBox(width: 15),
          CustomeContainer(
            weather: weather,
            textspan1: "Humidity :",
            textspandiscp1: " ${weather!.humidity} %",
            textspan2: "WindSpeed :",
            textspandiscp2: " ${weather!.windSpeed} m/s",
          ),
        ],
      ),
    );
  }
}
