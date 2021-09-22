import 'package:flutter/material.dart';
import 'package:lecture_azhar/ApiFirebase/apifirebase.dart';
import 'package:lecture_azhar/main.dart';
import 'package:lecture_azhar/showPdf/pdfpage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Lecture2 extends StatefulWidget {
  String pathpdf;
  Lecture2(this.pathpdf);
  @override
  _Lecture2State createState() => _Lecture2State();
}

class _Lecture2State extends State<Lecture2> {
  late Future<List<FirebaseFile>> futureFiles;


  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseApi.listAll(widget.pathpdf);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                "Lectures",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: mythem.white),
              ),
            ],
          ),
          backgroundColor: mythem.ko7ly,
        ),
        body: FutureBuilder<List<FirebaseFile>>(
            future: futureFiles,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    return Center(child: Text('Some error occurred!'));
                  } else {
                    final files = snapshot.data!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildHeader(files.length),
                        const SizedBox(height: 12),
                        Expanded(
                          child: ListView.builder(
                            itemCount: files.length,
                            itemBuilder: (context, index) {
                              final file = files[index];

                              return buildFile(context, file);
                            },
                          ),
                        ),
                      ],
                    );
                  }
              }
            }));
  }
  Widget buildHeader(int length) => ListTile(
    tileColor: mythem.white,
    leading: Container(
      width: 52,
      height: 52,
      child: Icon(
        Icons.file_copy,
        color: mythem.ko7ly,
      ),
    ),
    title: Text(
      '$length Files',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: mythem.ko7ly,
      ),
    ),
  );
  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
    leading: Container(
        width: 60, height: 60, child: Icon(
      Icons.picture_as_pdf,
      color: mythem.ko7ly,
    ),),
    title: Text(
      file.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: mythem.ko7ly,
      ),
    ),
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PdfPage(file: file),
    )),
  );
}