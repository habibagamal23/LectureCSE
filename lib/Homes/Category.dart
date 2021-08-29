import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Years/firsty/FirstYear.dart';
import 'package:lecture_azhar/Homes/Years/fourthy/Fourth_year.dart';
import 'package:lecture_azhar/Homes/Years/Info_Engi.dart';
import 'package:lecture_azhar/Homes/Years/secyear/Sec_year.dart';
import 'package:lecture_azhar/Homes/Years/thirdy/Thir_year.dart';
import 'package:lecture_azhar/main.dart';

class Category extends StatelessWidget {
  String title;
  var icon;
  bool isright;
  int postion;
  Category( this.title,  this.isright, this.icon, this.postion);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onItemClick(context);
      }
      ,
      child: Container(
        height: 100,
        width: double.infinity,

        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),

        decoration:  BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  mythem.ko7ly,
                  mythem.yellow

                ]
            ),
         // color: color1,

            borderRadius: isright? BorderRadius.only(topLeft:Radius.circular(20),
                topRight:Radius.circular(20)
                ,bottomRight: Radius.circular(20), bottomLeft: Radius.circular(0))
                : BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) ,
                bottomRight: Radius.circular(0), bottomLeft: Radius.circular(20))
        ),

        child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(title, style: TextStyle(
                  fontSize: 23,
                  color:mythem.white,
                fontWeight: FontWeight.bold
              ),),
            ),
            Expanded(child: Icon( icon,color: mythem.white,size: 50.0,)),


          ],
        ),

      ),
    );
  }

   onItemClick(BuildContext context){
    //navigate to a new screen
    if(postion==1){
      Navigator.pushNamed(context, FirstYear.RouteName);
    }
   else   if(postion==2){
      Navigator.pushNamed(context,secondYear.RouteName);
    }
    else   if(postion==3){
      Navigator.pushNamed(context, ThirdYear.RouteName);
    }
    else   if(postion==4){
      Navigator.pushNamed(context, FourthYear.RouteName);
    }
    else   if(postion==5) {
      Navigator.pushNamed(context, InfoEng.RouteName);
    }

    }

}

