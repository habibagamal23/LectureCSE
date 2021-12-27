import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/firsty/lec.dart';
import 'package:lecture_azhar/Linkes/FirstLink.dart';
import 'package:lecture_azhar/main.dart';

class Years extends StatelessWidget {
  String title;
  int postion;
  Years(this.title, this.postion);

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
              gradient: new LinearGradient(colors: [mythem.ko7ly,  mythem.lightwhite]),
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

      builder: (context) => Lecture("/1st/electronics1")));

}
    if(postion==2){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/ElectricalCircuits")));

    }
    if(postion==3){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/Programming")));

    }
    if(postion==4){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/Metrology & measuring")));

    }
    if(postion==5){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("/1st/math1")));

    }
    if(postion==6){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Firstlink()));

    }
    if(postion==7){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/Math")));

    }
    if(postion==8){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/Combinationallogic")));

    }

    if(postion==9){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/DataStructuer")));

    }
    if(postion==10){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("/1st/Electronics")));

    }
    if(postion==11){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/eletromagnticfields")));

    }
    if(postion==12){
      Navigator.of(context).push(MaterialPageRoute(

          builder: (context) => Lecture("1st/Doctors' books")));

    }
}

}
