// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_project/widgets/currenttemp.dart';
import 'package:weather_project/widgets/datetime.dart';
import 'package:weather_project/widgets/location.dart';
import 'package:weather_project/widgets/otherinfo.dart';
import 'package:weather_project/widgets/weathericon.dart';

class Weatherdata extends StatefulWidget {
  @override
  _WeatherdataState createState() => _WeatherdataState();
}

class _WeatherdataState extends State<Weatherdata> {
  static var apikey = "c966559719010d8c95b85a2cd520aabe";
  Weather? weather; //store information of weather object
  WeatherFactory wf = WeatherFactory(apikey);

  TextEditingController citycontroller = TextEditingController();
  void getweatherdata() {
    try {
      wf.currentWeatherByCityName(citycontroller.text).then((onValue) {
        setState(() {
          weather = onValue;
        });
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("City not found or network error")),
      );
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   wf.currentWeatherByCityName("Surat").then((onValue) {
  //     setState(() {
  //       weather = onValue;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfff6d365), Color(0xfffda085)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: TextField(
                    autofillHints: [AutofillHints.countryName],
                    controller: citycontroller,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: getweatherdata,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(244, 100, 84, 31),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Get Weather",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
          
                if (weather != null) ...[
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 450,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 251, 233, 194),
                          Color.fromARGB(255, 238, 219, 166),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
          
                      color: const Color.fromARGB(255, 134, 194, 243),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        location(weather: weather),
                        SizedBox(height: 5),
                        Datetime(weather: weather),
                        SizedBox(height: 3),
                        Weathericon(weather: weather),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        Currenttemp(weather: weather),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        Otherinfo(weather: weather),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
