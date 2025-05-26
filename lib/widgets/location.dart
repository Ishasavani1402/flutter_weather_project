// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class location extends StatefulWidget {
  Weather? weather;

  location({required this.weather});
  @override
  State<StatefulWidget> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.weather?.areaName ?? "",
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontFamily: "regular",
      ),
    );
  }
}
