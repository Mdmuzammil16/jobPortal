import 'package:butter_fly/components/second_heading_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends StatefulWidget {
  final String? url;

  const PdfViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top:true,
        child: Column(
          children: [
            SecondHeadingComponent(backPress: (){
              Get.back();
            },headingName: "Pdf Viewer"),
            Expanded(child: SfPdfViewer.network(widget.url ?? ""))
          ],
        ),
      ),
    );
  }
}
