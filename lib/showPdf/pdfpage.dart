import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../ApiFirebase/apifirebase.dart';

class PdfPage extends StatelessWidget {
  final FirebaseFile file;

  const PdfPage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ispdf = ['.pdf'].any(file.name.contains);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mythem.ko7ly,

        title: Text(file.name),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () async {
              await FirebaseApi.downloadFile(file.ref);

              final snackBar = SnackBar(
                content: Text('Downloaded ${file.name}'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: ispdf
          ? SfPdfViewer.network(
        file.url
      )
          : Center(
        child: Text(
          'Cannot be displayed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}