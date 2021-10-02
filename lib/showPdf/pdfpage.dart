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
  late OverlayEntry _overlayEntry;

  void _showContextMenu(
      BuildContext context, PdfTextSelectionChangedDetails details) {
    final OverlayState? _overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: details.globalSelectedRegion!.center.dy - 55,
        left: details.globalSelectedRegion!.bottomLeft.dx,
        child: TextButton(
          child: Text('Copy',
              style: TextStyle(
                fontSize: 17,
              )),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: details.selectedText));
            _pdfViewerController.clearSelection();
          },
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: mythem.ko7ly,
            elevation: 5,
          ),
        ),
      ),
    );
    _overlayState!.insert(_overlayEntry);
  }

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
              onTextSelectionChanged: (PdfTextSelectionChangedDetails details) {
                if (details.selectedText == null && _overlayEntry != null) {
                  _overlayEntry.remove();
                  _overlayEntry = null as OverlayEntry;
                } else if (details.selectedText != null &&
                    _overlayEntry == null) {
                  _showContextMenu(context, details);
                }
              },
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
