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
              " Fourth year CSE",
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
              fyear("Electronics", 1),
              fyear("Electrical Circuits", 2),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              fyear("Programming", 3),
              fyear("Metrology & measuring", 4),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              fyear("English", 5),
              fyear("Doctors' books ", 6),
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
              fyear("Math", 7),
              fyear("Combinational logic ", 8),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              fyear("OOP", 9),
              fyear("Electronics ", 10),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              fyear("eletromagntic fields", 11),
              fyear("Doctors' books ", 12),
              Spacer(),
            ],
          )

        ],

      ),

    );
  }


}

