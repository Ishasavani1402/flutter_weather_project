// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

class Datetime extends StatelessWidget {
  Weather? weather;
  Datetime({required this.weather});

  @override
  Widget build(BuildContext context) {
    DateTime now = weather!.date!;
    return Column(
      children: [
        Text(
          DateFormat("hh:mm a").format(now),
          style: TextStyle(fontSize: 30, fontFamily: "bold"),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat("EEEE").format(now),
              style: TextStyle(fontSize: 20, fontFamily: "regular"),
            ),
            Text(
              " ${DateFormat('dd.MM.yy').format(now)}",
              style: TextStyle(fontSize: 20, fontFamily: "regular"),
            ),
          ],
        ),
      ],
    );
  }
}
