import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'Homes/HomeScreen.dart';

import 'dart:async';

class SplashScreen extends StatefulWidget {
  static final String RouteName = "Splashscreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(

        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                height: 280,
                width: 250,
                child: Image.asset(
                  "assets/images/log.jpeg",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Computer Engineering",
                style: TextStyle(
                    color: mythem.ko7ly,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Text(
                "Al Azhar Universty",
                style: TextStyle(
                    color: mythem.ko7ly,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              //  SizedBox(height: 250,),
Spacer(flex: 4,),
              Text(
                "Habiba Gamal",
                style: TextStyle(
                    color:mythem.ko7ly,
                    fontWeight: FontWeight.w200,
                    fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
