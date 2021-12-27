import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

import 'Map.dart';

class Firstlink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/log.jpeg",
                ),
                maxRadius: 40,
              ),
            ),
          ],
          toolbarHeight: MediaQuery.of(context).size.height / 7,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: mythem.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "To hlep you ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: mythem.white),
              ),
            ],
          ),
          backgroundColor: mythem.ko7ly,
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                    context: context,
                    title: 'data structures & algorithms',
                    subTitle:
                    "\n https://www.youtube.com/playlist?list=PLCInYL3l2AajqOUW_2SwjWeMwf4vL4RSp \n"
                        " https://www.youtube.com/playlist?list=PLoK2Lr1miEm -5zCzKE8siQezj9rvQlnca \n"

                      ),




              ],
            )),
      ),
    );
  }
}