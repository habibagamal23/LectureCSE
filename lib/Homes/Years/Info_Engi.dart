import 'package:flutter/material.dart';
import 'package:lecture_azhar/showPdf/pdfpage.dart';
import 'package:lecture_azhar/ApiFirebase/apifirebase.dart';
import 'package:lecture_azhar/main.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class InfoEng extends StatefulWidget {
  static final String RouteName = "InfoEng";

  @override
  _InfoEngState createState() => _InfoEngState();
}

class _InfoEngState extends State<InfoEng> {
  late Future<List<FirebaseFile>> futureFiles;
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseApi.listAll('/info');
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
                  'assets/images/log.jpeg',
                ),
                maxRadius: 41,
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
                "Info About EECS",
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

  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
        leading: Container(
            width: 40, height: 40, child:Icon(
          Icons.picture_as_pdf,
          color: mythem.ko7ly,
        ), ),
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
}
