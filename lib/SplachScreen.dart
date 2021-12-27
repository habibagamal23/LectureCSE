import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'Homes/HomeScreen.dart';
import "package:delayed_display/delayed_display.dart";
import 'dart:async';

class SplashScreen extends StatefulWidget {
  static final String RouteName = "Splashscreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration initialDelay = Duration(seconds: 1);
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
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
      body: SafeArea(
        child: Center(

          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                  flex: 3,
                  child: DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 1),
                      child: Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/log.jpeg'))),
                      )),
                ),
                
                Expanded(
                  flex: 2,
                  child: DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 2),
                    child: Text(
                      "Computer Engineering Al Azhar Universty",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: mythem.ko7ly,
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 250,),
                Expanded(
                  flex: 2,
                  child: DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 2),
                    child: Text(
                      "Habiba Gamal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight:FontWeight.w200,
                        fontSize: 15.0,
                        color: mythem.ko7ly,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: CircularProgressIndicator(
                    color: mythem.ko7ly,
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
