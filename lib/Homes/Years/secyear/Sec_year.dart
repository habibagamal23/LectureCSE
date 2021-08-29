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
              "Second year CSE",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: mythem.white),
            ),
            SizedBox(height: 5,)
            ,
            Text(
              "Lectures & Doctors' books ",
              style: TextStyle(
                  fontSize: 7, fontWeight: FontWeight.normal, color: mythem.white),
            ),

          ],
        ),
        backgroundColor: mythem.ko7ly,
      ),
      body: ListView (
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Text("First Term "
              ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              syear("Electronics", 1),
              syear("Electrical Circuits", 2),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("Programming", 3),
              syear("Metrology & measuring", 4),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("English", 3),
              syear("Doctors' books ", 4),
              Spacer(),
            ],
          ),

          Container(
            margin: EdgeInsets.all(8),
            child: Text("Second Term "
              ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              syear("Math", 7),
              syear("Combinational logic ", 8),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("OOP", 9),
              syear("Electronics ", 10),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              syear("eletromagntic fields", 11),
              syear("Doctors' books ", 12),
              Spacer(),
            ],
          )

        ],

      ),
    );
  }


}