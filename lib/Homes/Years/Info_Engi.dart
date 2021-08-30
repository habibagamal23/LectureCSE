import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class InfoEng extends StatefulWidget {
  static final String RouteName = "InfoEng";

  @override
  _InfoEngState createState() => _InfoEngState();
}

class _InfoEngState extends State<InfoEng> {
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    print("done");

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/logoazhr.PNG',
                ),
                maxRadius: 40,
              ),
            ),
          ],
          toolbarHeight: 90,
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
                "Info About CSE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: mythem.white),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "This ِapp is for students in computer engineering ",
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.normal,
                    color: mythem.white),
              ),

            ],
          ),
          backgroundColor: mythem.ko7ly,
        ),
        body: Container(

          child: SfPdfViewer.asset(
          'assets/pdf/infodeveloper.pdf',
          enableDoubleTapZooming: true ,
          ),
        ));
  }

}
