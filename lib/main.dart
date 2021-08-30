import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/firsty/FirstYear.dart';
import 'package:lecture_azhar/Homes/Years/fourthy/Fourth_year.dart';
import 'package:lecture_azhar/Homes/Years/Info_Engi.dart';
import 'package:lecture_azhar/Homes/Years/secyear/Sec_year.dart';
import 'package:lecture_azhar/Homes/Years/thirdy/Thir_year.dart';

import 'Homes/HomeScreen.dart';
void main() {
  runApp(MyApp());
}
class mythem{
  static var lightwhite  = Color.fromRGBO(246, 247, 248, 1.0);
  static var yellow  =   Color.fromRGBO(154, 206, 235, 1.0);
  static var black =   Color.fromRGBO(17, 17, 17, 1.0);
  static var white = Colors.white;
  static var orange = Color.fromRGBO(233, 105, 44, 1.0);
  static var ko7ly = Color.fromRGBO(0, 123, 167, 1.0);





}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'University lectures',
      routes:{
     HomeScreen.RouteName : (context)=>HomeScreen(),
        FirstYear.RouteName: (context)=>FirstYear(),
        secondYear.RouteName: (context)=> secondYear(),
        ThirdYear.RouteName: (context)=>ThirdYear(),
        FourthYear.RouteName: (context)=>FourthYear(),
       InfoEng.RouteName: (context)=> InfoEng(),


      } ,
      initialRoute: HomeScreen.RouteName ,
    );

  }
}