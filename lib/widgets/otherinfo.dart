// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Otherinfo extends StatelessWidget {
  Weather? weather;

  Otherinfo({required this.weather});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 158, 133, 52),
            const Color.fromARGB(255, 206, 139, 119),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 94, 93, 93),
            offset: Offset(2, 2),
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "MaxTemp : ${weather!.tempMax!.celsius!.toStringAsFixed(0)}°C",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "regular",
                    color: Colors.white,
                  ),
                ),
                Text(
                  "MinTemp : ${weather!.tempMin!.celsius!.toStringAsFixed(0)}°C",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "regular",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "WindSpeed : ${weather!.windSpeed!.toStringAsFixed(0)}m/s",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "regular",
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Humidity : ${weather!.humidity} %",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "regular",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
