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
              "First Ac",
              false,
              Icons.looks_one_rounded,
              1,
            ),
            Category(
              "Sec Ac",
              true,
              Icons.looks_two_rounded,
              2,
            ),
            Category(
              "Third Ac",
              false,
              Icons.looks_3_rounded,
              3,
            ),
            Category(
              "Fourth Ac",
              true,
              Icons.looks_4_rounded,
              4,
            ),
            Category(
              "E E C S    ",
              true,
              Icons.category_rounded,
              5,
            ),

          ],
        );
      },
    );
  }
}
