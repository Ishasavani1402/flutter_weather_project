// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class CustomeContainer extends StatelessWidget {
  Weather? weather;
  String textspan1;
  String textspan2;
  String textspandiscp1;
  String textspandiscp2;

  CustomeContainer({
    required this.weather,
    required this.textspan1,
    required this.textspandiscp1,
    required this.textspan2,
    required this.textspandiscp2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 150,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: textspan1,
                  style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: textspandiscp1,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "regular",
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: textspan2,
                  style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
                TextSpan(
                  text: textspandiscp2,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "regular",
                    color: Colors.black,
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
