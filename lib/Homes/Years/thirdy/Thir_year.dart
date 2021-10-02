import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/thirdy/tyear.dart';
import 'package:lecture_azhar/main.dart';

class ThirdYear extends StatelessWidget {
  static final String RouteName = "3nd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/log.jpeg",
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
              " Third year CSE",
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
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(8),
            child: Text("First Term "
              ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ,color: mythem.ko7ly
              ),
              textAlign: TextAlign.center,

            ),
          ),
          Row(
            children: [
              Spacer(),
          tyear("Communications", 1),
              tyear("Automata", 2),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              tyear("Microprocessor", 3),
              tyear("Queues", 4),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              tyear("Hadith", 5),
              tyear("Linkes", 6),
              Spacer(),
            ],
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(8),
            child: Text("Second Term "
              ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ,color: mythem.ko7ly
              ),
              textAlign: TextAlign.center,

            ),
          ),
          Row(
            children: [
              Spacer(),
              tyear("DataBase", 7),
              tyear("Operating System ", 8),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              tyear("Power system", 9),
              tyear("Sensors ", 10),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              tyear("Project Management", 11),
              tyear("Doctors' books ", 12),
              Spacer(),
            ],
          )

        ],

      ),

    );
  }


}