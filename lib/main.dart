import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/firsty/FirstYear.dart';
import 'package:lecture_azhar/Homes/Years/fourthy/Fourth_year.dart';
import 'package:lecture_azhar/Homes/Years/secyear/Sec_year.dart';
import 'package:lecture_azhar/Homes/Years/thirdy/Thir_year.dart';
import 'package:firebase_core/firebase_core.dart';
import 'SplachScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class mythem {
  static var lightwhite = Color.fromRGBO(126, 223, 253, 1.0);
  static var white = Colors.white;
  static var orange = Color.fromRGBO(43, 143, 182, 1.0);
  static var ko7ly = Color.fromRGBO(14, 76, 146, 1.0);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University lectures',
      routes: {
        SplashScreen.RouteName: (context) => SplashScreen(),
        FirstYear.RouteName: (context) => FirstYear(),
        secondYear.RouteName: (context) => secondYear(),
        ThirdYear.RouteName: (context) => ThirdYear(),
        FourthYear.RouteName: (context) => FourthYear(),
      },
      initialRoute: FirstYear.RouteName,
    );
  }
}
