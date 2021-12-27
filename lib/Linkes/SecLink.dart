import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

import 'Map.dart';

class Secondlink extends StatelessWidget {
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
                title: 'Math In English',
                subTitle:
                    "\n https://www.youtube.com/playlist?list=PLhSp9OSVmeyLke5_cby8i8ZhK8FHpw3q \n"
                    "\n https://youtu.be/GKjd8Bd5QV4 \n"
                    "\n https://youtu.be/luJMl37-nso \n"
                    " https://www.youtube.com/playlist?list=PLhSp9OSVmeyIYLVvSJ8m6KvVwJs7M9QBm \n"),
            text(
                context: context,
                title: 'Math In Arabic',
                subTitle:
                    "\n  https://www.youtube.com/playlist?list=PLR2RsKKRngz6vSNlXJJXj6slpmKNgztNi \n"
                    " https://www.youtube.com/playlist?list=PLR2RsKKRngz74aGFaqTQPi9GxWVzDkB6A \n"
                    " https://www.youtube.com/playlist?list=PLfd3S8S4nJoYK98TKWZ4upqxHg_G0dFJl \n"),

            text(
                context: context,
                title: 'OOP In English',
                subTitle:"\n https://www.youtube.com/playlist?list=PL9ooVrP1hQOHb4bxoHauWVwNg4FweDItZ \n"
                " https://youtu.be/grEKMHGYyns \n"
           ),


            text(
                context: context,
                title: 'OOP In Arabic',
                subTitle:
            "\n https://www.youtube.com/playlist?list=PLrW6ND2wzt4qcsqTEXcvuPP-hASzIoy7y \n"
                " https://www.youtube.com/playlist?list=PL1DUmTEdeA6Icttz-O9C3RPRF8R8Px5vk \n"

            ),


            text(
                context: context,
                title: 'IC',
                subTitle:
            " \n https://www.youtube.com/playlist?list=PL7qUW0KPfsIIOPOKL84wK_Qj9N7gvJX6v \n"
            ),


            text(
                context: context,
                title: 'Logic',
                subTitle:
                " \n https://www.youtube.com/playlist?list=PLoK2Lr1miEm8b6Vv5zAfsbMEPZ1C7fCQw \n"
            ),


            text(
                context: context,
                title: 'Signals',
                subTitle:
                " \n https://www.youtube.com/playlist?list=PLDCC0BD157D9BCFA5 \n"
            ),


            text(
                context: context,
                title: 'االات_كهربية',
                subTitle:
                " \n  https://www.youtube.com/playlist?list=PLR2RsKKRngz4smqtVgR3iaS1Qzz1UBNyT \n"
            "  https://www.youtube.com/playlist?list=PLuUdFsbOK_8qVROrfl2M2WSV2xAz-ABVU \n "

            " https://www.youtube.com/playlist?list=PLLV20d95DZpJVfUq24XcUIqaoybKvuyjN  \n"

            ),


            text(
                context: context,
                title: 'اللينك ده فيه كل اللى اخدناه في الكنترول من االول ومعاهم الكتاب',
                subTitle:
                " \n https://drive.google.com/drive/folders/1Fd1YEkBF2mS1X8HkowZ8manWu2gzv_tn \n"
            ),


          ],
        )),
      ),
    );
  }
}
