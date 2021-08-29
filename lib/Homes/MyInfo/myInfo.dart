import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

class myInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      height: 700,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), //border corner radius
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
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              " ِAbout the Appliation",
              style: TextStyle(fontSize: 30, color: mythem.ko7ly),
            ),
            Text(
              " There are lectures for both first, second, "
              " third  and fourth year computer engineering and systems.  ِ",
              style: TextStyle(
                fontSize: 15,
              ),
              maxLines: 10,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              " ِAbout Devloper",
              style: TextStyle(fontSize: 30, color: mythem.ko7ly),
            ),
            Text(
              " Habiba Gamal , A student at Al-Azhar University, "
              "college of computer engineering and systems",
              style: TextStyle(
                fontSize: 15,
              ),
              maxLines: 10,
            ),
            Expanded(
              child: Text(
                "Gmail : habiba.gamaall23@gmail.com ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              " اذا يوجد لديك اقتراح او شئ لقوله لا تتردد! ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
