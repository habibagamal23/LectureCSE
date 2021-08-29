import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';

class Years extends StatelessWidget {
  String title;
  int postion;
  Years(this.title, this.postion);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: (){

        },
        child: Container(
            height: 100,
            width: 150,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: new LinearGradient(colors: [mythem.ko7ly, mythem.yellow]),
              borderRadius: BorderRadius.circular(15), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: mythem.ko7ly.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
              ],
            ),
        child: Center(
          child: Text(title
            ,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mythem.white
            ),
          ),
        ),
        ),
      ), );
  }




}
