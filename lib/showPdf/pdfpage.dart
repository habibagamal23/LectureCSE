import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lecture_azhar/main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../ApiFirebase/apifirebase.dart';

class PdfPage extends StatefulWidget {
  final FirebaseFile file;

  PdfPage({required this.file});

  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {


  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ispdf = ['.pdf'].any(widget.file.name.contains);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mythem.ko7ly,
        title: Text(widget.file.name),
        actions: [
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () async {
              await FirebaseApi.downloadFile(widget.file.ref);

              final snackBar = SnackBar(
                content: Text('Downloaded ${widget.file.name}'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: ispdf
          ? SfPdfViewer.network(
              widget.file.url,
              canShowScrollHead: true,
              enableDoubleTapZooming: true,
              controller: _pdfViewerController,
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
