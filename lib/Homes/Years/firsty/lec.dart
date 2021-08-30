import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Lecture extends StatelessWidget {
  static final String RouteName = "Lecture";

  //int numLec ;
  //String pathpdf;

 // Lecture(this.numLec, this.pathpdf);

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
       appBar: AppBar(
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CircleAvatar(
               backgroundImage: AssetImage(
                 "assets/images/10.jpg",
               ),
               maxRadius: 30,
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
               "Lectures",
               style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: mythem.white),
             ),
           ],
         ),
         backgroundColor: mythem.ko7ly,
       ),
       body: Container(

         child: SfPdfViewer.asset(
          "assets/pdf/logic/logicone.pdf" ,
           enableDoubleTapZooming: true ,
         ),
       ));
  }
}

