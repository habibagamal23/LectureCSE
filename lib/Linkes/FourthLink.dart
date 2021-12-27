import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';

import 'Map.dart';

class Fourthlink extends StatelessWidget {
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
                    title: 'Network',
                    subTitle:
                    "\n https://drive.google.com/file/d/1QCah2seqIbEZNAY_t29WMxyyl7Vt2Bks/view \n"

                    ),
                text(
                    context: context,
                    title: 'Security',
                    subTitle:
                    "\n https://www.youtube.com/playlist?list=PLvWJRukPElc7LFi-jo3fnCJ10rpDmS9uE  \n"
                        "\n https://drive.google.com/drive/u/0/folders/0BzpPPHvOEodvcWJKOVREM1p0cW8?fbclid=IwAR3VGvilmHfbcQmXhy2UWAWGTWikQlujbkGAOfmLVDaoDgyFeD9qAvMAY1g&resourcekey=0-Wkrxej-DZpGb8lW3_db3jA \n"
                ),

                text(
                    context: context,
                    title: 'Compilers',
                    subTitle:"\n https://drive.google.com/drive/u/0/folders/14_PRM9OfyQAEtmLwl62u-ITGHcHXgyNY?fbclid=IwAR3VGvilmHfbcQmXhy2UWAWGTWikQlujbkGAOfmLVDaoDgyFeD9qAvMAY1g \n"

                ),


                text(
                    context: context,
                    title: 'Computer Arch',
                    subTitle:
                    "\n https://www.youtube.com/playlist?list=PLeZe8KM6bG5pNRRkDvaiQ8HFgpj1cVyHr \n"
                        "  \n https://drive.google.com/drive/u/0/folders/1mp3O86m7rsRFhIl8XtKsCAMrKWsEH1Gt?fbclid=IwAR3VGvilmHfbcQmXhy2UWAWGTWikQlujbkGAOfmLVDaoDgyFeD9qAvMAY1g \n"

                ),


                text(
                    context: context,
                    title: 'Cad and manufacturing ',
                    subTitle:
                    " \n https://drive.google.com/drive/u/0/folders/10XVouL9dZ88A-PATcUb76Ng6HHSTygn4?fbclid=IwAR3VGvilmHfbcQmXhy2UWAWGTWikQlujbkGAOfmLVDaoDgyFeD9qAvMAY1g\n"
                ),


                text(
                    context: context,
                    title: 'Python',
                    subTitle:
                    " \n https://www.youtube.com/playlist?list=PLWWslkYU8UG_pD-5pPOgSAgSbS9nLX-Z4 \n"
                    "\n https://drive.google.com/drive/u/0/folders/13MfUIg8SylhQk0GiW_z2JcPqFEbVzc-D?fbclid=IwAR3VGvilmHfbcQmXhy2UWAWGTWikQlujbkGAOfmLVDaoDgyFeD9qAvMAY1g \n"
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
                        " \n https://www.youtube.com/playlist?list=PLuUdFsbOK_8qVROrfl2M2WSV2xAz-ABVU \n "

                        " \n https://www.youtube.com/playlist?list=PLLV20d95DZpJVfUq24XcUIqaoybKvuyjN  \n"

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