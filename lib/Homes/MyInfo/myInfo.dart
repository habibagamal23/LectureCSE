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


      ),
      child: Expanded(
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                leading: Icon(Icons.mobile_friendly_outlined),

                title :Text( "About the Appliation",
                    style: TextStyle(fontSize: 30, color: mythem.ko7ly))
               ,
                subtitle: Text(
                  " There are lectures for both first, second, "
                      " third  and fourth year computer engineering and systems.  ِ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  maxLines: 10,
                ),
              ),

              SizedBox(
                height: 4,
              ),
              ListTile(
                leading: Icon(Icons.face_outlined),

                title : Text(  "About Devloper",
                  style: TextStyle(fontSize: 30, color: mythem.ko7ly),)
              , subtitle:  Text(
                " Habiba Gamal , A student at Al-Azhar University, "
                    "college of computer engineering and systems",
                style: TextStyle(
                  fontSize: 15,
                ),
                maxLines: 10,
              ),
              ),

              ListTile(
                leading: Icon(Icons.connect_without_contact_rounded),
               title :  Text( "Contact with me",
                   style: TextStyle(fontSize: 30, color: mythem.ko7ly))
               , subtitle:  Text("  habiba.gamaall23@gmail.com "),
              ),

              ListTile(
                  leading: Icon(Icons.insert_emoticon_outlined),

                  title : Text( " اذا يوجد لديك اقتراح او شئ لقوله لا تتردد! ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  color: mythem.ko7ly
                  ),)

              )
            ],
          ),
        ),
      ),
    );
  }
}
