import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/secyear/syear.dart';
import 'package:lecture_azhar/main.dart';

class secondYear extends StatelessWidget {
  static final String RouteName = "2nd";

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
        toolbarHeight:  MediaQuery.of(context).size.height/7,
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
              "Second year CSE",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mythem.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lectures & Doctors' books ",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: mythem.white),
            ),
          ],
        ),
        backgroundColor: mythem.ko7ly,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(8),
            child: Text(
              "First Term ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: mythem.ko7ly),
              textAlign: TextAlign.center,

            ),
          ),
          Row(
            children: [
              Spacer(),
              syear("Signals ", 1),
              syear("integrated Circuits", 2),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("Mathematics", 3),
              syear("OOP", 4),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("Linkes videos", 5),
              syear("Sequential Logic  ", 6),
              Spacer(),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(8),
            child: Text(
              "Second Term ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: mythem.ko7ly),
            textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              Spacer(),
              syear("Numerical", 7),
              syear(" Digital Circuits ", 8),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("Control", 9),
              syear("Machines ", 10),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("Probability", 11),
              syear("Doctors' books ", 12),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
