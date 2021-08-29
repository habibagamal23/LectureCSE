import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

class InfoEng extends StatelessWidget {
  static final String RouteName = "InfoEng";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logoazhr.PNG',
              ),
              maxRadius: 40,
            ),
          ),
        ],
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(

              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )),
        elevation: 3,
        centerTitle: false,
        title: Column(
          children: [
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: mythem.white),
            ),
            SizedBox(height: 5,)
            ,
            Text(
              "This ِapp is for students in computer engineering for the first,",
              style: TextStyle(
                  fontSize: 7, fontWeight: FontWeight.normal, color: mythem.white),
            ),


            Text(
              " second, third and fourth years only",
              style: TextStyle(
                  fontSize: 7, fontWeight: FontWeight.normal, color: mythem.white),
            ),

          ],
        ),
        backgroundColor: mythem.ko7ly,
      ),

    );
  }


}