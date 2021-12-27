import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/firsty/years.dart';
import 'package:lecture_azhar/main.dart';

class FirstYear extends StatelessWidget {
  static final String RouteName = "First";

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
             " First year CSE",
             style: TextStyle(
                 fontSize: 20, fontWeight: FontWeight.bold, color: mythem.white),
           ),
           SizedBox(height: 3,)
           ,
           Text(
             "Lectures & Doctors' books ",
             style: TextStyle(
                 fontSize: 10, fontWeight: FontWeight.normal, color: mythem.white),
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
           fontWeight: FontWeight.bold,
           color: mythem.ko7ly
       ),
       textAlign: TextAlign.center,
     ),
   ),
    Row(
      children: [

        Spacer(),
        Years("Electronics1", 1),
        Years("Electrical Circuits", 2),
        Spacer(),
      ],
    ),
    Row(
      children: [
        Spacer(),
        Years("Programming", 3),
        Years("Metrology & measuring", 4),
        Spacer(),
      ],
    ),
    Row(
      children: [
        Spacer(),
        Years("Math1", 5),
        Years("Linkes videos ", 6),
        Spacer(),
      ],
    ),

    Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(8),
      child: Text("Second Term "
        ,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: mythem.ko7ly
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Row(
      children: [
        Spacer(),
        Years("Math", 7),
        Years("Combinational logic ", 8),
        Spacer(),
      ],
    ),
    Row(
      children: [
        Spacer(),
        Years("DataStructuer ", 9),
        Years("Electronics ", 10),
        Spacer(),
      ],
    ),
    Row(
      children: [
        Spacer(),
        Years("eletromagntic fields", 11),
        Years("Doctors' books ", 12),
        Spacer(),
      ],
    )

  ],

     ),

   );
  }


}