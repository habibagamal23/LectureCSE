
import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

import 'Map.dart';

class ThiredLink extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(
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
                " Some Linkes",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: mythem.white),
              ),
              SizedBox(height: 5,)
              ,
              Text(
                "To hlep you ",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.normal, color: mythem.white),
              ),



            ],
          ),
          backgroundColor: mythem.ko7ly,
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                text(context: context,
                    title: 'OS',
                    subTitle:

                   "\n https://www.youtube.com/playlist?list=PLF0363481B444A85F \n"

                       " \n https://youtu.be/3cP3NUqEKNo \n"

                       "\n https://www.youtube.com/watch?v=aRSo7wkV8Ks&list=PLHKTPL-jkzUqgHIBdC2I16QqZCSDN_6oS \n"
                       "\n https://www.guru99.com/os-tutorial.html \n"

                ),

              ],
            )),
      ),
    );
  }
}