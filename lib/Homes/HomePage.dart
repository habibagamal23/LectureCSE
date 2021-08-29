import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Category.dart';
class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 1,

      padding: const EdgeInsets.all(8),
      itemBuilder: (BuildContext context, int index) {
return Column(
  children: [
    Category( "First Ac ", false , Icons.looks_one_rounded,1),
    Category( "Sac Ac ", true, Icons.looks_two_rounded ,2),

    Category( "Third Ac ",false , Icons.looks_3_rounded,3),
    Category( "Fourth  ",   true, Icons.looks_4_rounded ,4),
    Category( "CE ",   false, Icons.computer_rounded,5 ),


  ],);
      },





    );



  }
}
