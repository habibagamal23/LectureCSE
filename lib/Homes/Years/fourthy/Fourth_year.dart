import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/fourthy/fyear.dart';
import 'package:lecture_azhar/main.dart';

class FourthYear extends StatelessWidget {
  static final String RouteName = "Forth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/log.jpeg",
              ),
              maxRadius: 40,
            ),
          ),
        ],
        toolbarHeight:   MediaQuery.of(context).size.height/7,
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
              " Fourth year CSE",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mythem.white),
           

            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Lectures & Doctors' books ",
              style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.normal,
                  color: mythem.white),
            ),
          ],
        ),
        backgroundColor: mythem.ko7ly,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(8),
              child: Text(
                "First Term ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                ,color:  mythem.ko7ly
                ),
                textAlign: TextAlign.center,

              ),
            ),
            Row(
              children: [
                Spacer(),
                fyear("Networks", 1),
                fyear("Compilers", 2),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                fyear("Security", 3),
                fyear("Computer Arch", 4),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                fyear("Cad&ManuFacturing", 5),
                fyear("Linkes", 6),
                Spacer(),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(8),
              child: Text(
                "Second Term ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: mythem.ko7ly),
                textAlign: TextAlign.center,

              ),
            ),
            Row(
              children: [
                Spacer(),
                fyear("Embedded System", 7),
                fyear("Software Eng", 8),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                fyear("Python", 9),
                fyear("InterFacing ", 10),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                fyear("AI", 11),
                fyear("Doctors' books ", 12),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
