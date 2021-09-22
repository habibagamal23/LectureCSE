import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/Category.dart';
import 'package:lecture_azhar/Homes/Years/Info_Engi.dart';
import 'package:lecture_azhar/main.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      padding: const EdgeInsets.all(2),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Category(
              "First Ac ",
              false,
              Icons.looks_one_rounded,
              1,
            ),
            Category(
              "Sec Ac ",
              true,
              Icons.looks_two_rounded,
              2,
            ),
            Category(
              "Third Ac ",
              false,
              Icons.looks_3_rounded,
              3,
            ),
            Category(
              "Fourth Ac ",
              true,
              Icons.looks_4_rounded,
              4,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoEng(),
                  )),
              child: Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [mythem.ko7ly, mythem.lightwhite]),
                    // color: color1,

                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "CSE",
                        style: TextStyle(
                            fontSize: 23,
                            color: mythem.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 3,
                        child: Icon(
                          Icons.computer_rounded,
                          color: mythem.white,
                          size: 40.0,
                        )),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
