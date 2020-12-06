import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:scientific_calculator/currency_converter.dart';
import 'package:scientific_calculator/temperature_converter.dart';
import 'package:scientific_calculator/weight_converter.dart';
import 'category_box.dart';
import 'length_converter.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF283637),
          body: SafeArea(
            child: Container(
              child: Column(children: <Widget>[
                CategoryBox(
                  pic: MaterialCommunityIcons.ruler,
                  text: 'Length',
                  rang: Colors.red,
                  action: () {
                    Future.delayed(const Duration(milliseconds: 155), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LengthConverter()),
                      );
                    });
                  },
                ), // Length Box
                CategoryBox(
                  pic: MaterialCommunityIcons.weight,
                  text: 'Weight',
                  rang: Colors.orangeAccent,
                  action: () {
                    Future.delayed(const Duration(milliseconds: 155), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeightConverter()),
                      );
                    });
                  },
                ), // Weight Box

                CategoryBox(
                  pic: FontAwesome5Solid.temperature_high,
                  text: 'Temperature',
                  rang: Colors.blueAccent,
                  action: () {
                    Future.delayed(const Duration(milliseconds: 155), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TemperatureConverter()),
                      );
                    });
                  },
                ), // Temp Box

                CategoryBox(
                  pic: MaterialIcons.attach_money,
                  text: 'Currency',
                  rang: Colors.redAccent,
                  action: () {
                    Future.delayed(const Duration(milliseconds: 155), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CurrencyConverter()),
                      );
                    });
                  },
                ),
              ]),
            ),
          )),
    );
  }
}
