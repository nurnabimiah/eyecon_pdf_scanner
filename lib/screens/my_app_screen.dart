


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart' as pw;



class MyAppScreen extends StatefulWidget {
  @override
  _MyAppScreenState createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  final picker = ImagePicker();
  final pdf = pw.Document();
  List<File> _images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image to PDF"),
        actions: [
          IconButton(
            icon: Icon(Icons.picture_as_pdf),
            onPressed: () {
              createPDF();
              savePDF();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: getImageFromGallery,
      ),
      body: _images.isNotEmpty
          ? ListView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) => Container(
          height: 400,
          width: double.infinity,
          margin: EdgeInsets.all(8),
          child: Image.file(
            _images[index],
            fit: BoxFit.cover,
          ),
        ),
      )
          : Container(),
    );
  }

  Future<void> getImageFromGallery() async {
    List<XFile>? pickedFiles = await picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        // _images = pickedFiles.map((file) => File(file.path)).toList();
        _images.addAll(pickedFiles.map((file) => File(file.path)));
      });
    } else {
      print('No image selected');
    }
  }

  void createPDF() {
    for (var img in _images) {
      final image = pw.MemoryImage(img.readAsBytesSync());

      pdf.addPage(pw.Page(
        pageFormat: pw.PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(child: pw.Image(image));
        },
      ));
    }
  }

  void savePDF() async {
    try {
      final dir = await getExternalStorageDirectory();
      final file = File('${dir!.path}/filename.pdf');
      await file.writeAsBytes(await pdf.save());
      showPrintedMessage(context, 'Success', 'Saved to documents');
    } catch (e) {
      showPrintedMessage(context, 'Error', e.toString());
    }
  }

  void showPrintedMessage(BuildContext context, String title, String msg) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              Icons.info,
              color: Colors.blue,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(msg),
              ],
            ),
          ],
        ),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
