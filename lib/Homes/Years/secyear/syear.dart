import 'package:flutter/material.dart';
import 'package:lecture_azhar/Linkes/SecLink.dart';
import 'package:lecture_azhar/main.dart';

import 'lec2.dart';

class syear extends StatelessWidget {
  String title;
  int postion;
  syear(this.title, this.postion);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: (){
          onItemClick(context);
        },
        child: Container(
          height: MediaQuery.of(context).size.height/7,
          width: MediaQuery.of(context).size.height/5,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: new LinearGradient(colors: [mythem.ko7ly, mythem.lightwhite]),
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
  onItemClick(BuildContext context){
    //navigate to a new screen
    if(postion==1){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Signals")));

    }
    if(postion==2){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/integratedCircuits")));

    }
    if(postion==3){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Mathematics")));

    }
    if(postion==4){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) =>Lecture2("2st/OOP")));

    }
    if(postion==5){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Secondlink()));

    }
    if(postion==6){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Sequential Logic")));

    }
    if(postion==7){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Numerical")));

    }
    if(postion==8){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/DigitalCircuits")));

    }

    if(postion==9){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Control")));

    }
    if(postion==10){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Machines")));

    }
    if(postion==11){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) =>Lecture2("2st/Probability")));

    }
    if(postion==12){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture2("2st/Doctors' books")));

    }
  }
}
