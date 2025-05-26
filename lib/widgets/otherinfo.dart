// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Otherinfo extends StatelessWidget {
  Weather? weather;

  Otherinfo({required this.weather});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
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
        ),
      ],
    );
  }
}
