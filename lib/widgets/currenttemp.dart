// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Currenttemp extends StatelessWidget {
  Weather? weather;

  Currenttemp({required this.weather});
  @override
  Widget build(BuildContext context) {
    return Text(
      "${weather?.temperature?.celsius?.toStringAsFixed(0)} °C",
      style: TextStyle(fontSize: 25, fontFamily: "regular"),
    );
  }
}
