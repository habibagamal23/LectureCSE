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
             backgroundImage: AssetImage("assets/images/10.jpg",
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
             " First year CSE",
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
        Years("Electronics", 1),
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
        Years("English", 5),
        Years("Doctors' books ", 6),
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
        Years("Math", 7),
        Years("Combinational logic ", 8),
        Spacer(),
      ],
    ),
    Row(
      children: [
        Spacer(),
        Years("OOP", 9),
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