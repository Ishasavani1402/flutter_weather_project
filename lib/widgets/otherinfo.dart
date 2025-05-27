// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Otherinfo extends StatelessWidget {
  Weather? weather;

  Otherinfo({required this.weather});
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
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
                      text: "MinTemp ",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: " : ${weather!.tempMin!.toString()}",
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
                      text: "MaxTemp ",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                    TextSpan(
                      text: " : ${weather!.tempMax!.toString()}",
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
        ),
        Container(
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
                      text: "MinTemp ",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: " : ${weather!.tempMin!.toString()}",
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
                      text: "MaxTemp ",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                    TextSpan(
                      text: " : ${weather!.tempMax!.toString()}",
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
        ),
      ],
    );
  }
}
// Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 "Min.Temp : ",
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.white,
//                   fontFamily: "bold",
//                   decoration: TextDecoration.underline,
//                   decorationColor: Colors.white,
//                   decorationStyle: TextDecorationStyle.double,
//                 ),
//               ),
//               SizedBox(width: 10),
//               Text(
//                 weather!.tempMin!.toString(),
//                 style: TextStyle(fontSize: 15, fontFamily: "regular"),
//               ),
//             ],
//           ),