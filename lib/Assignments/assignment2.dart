import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class assignment2 extends StatefulWidget {
  const assignment2({Key? key}) : super(key: key);

  @override
  State<assignment2> createState() => _assignment2State();
}

class _assignment2State extends State<assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/edtech-app-8ee51.appspot.com/o/Assignments%2FAssignment2%2Fhalf%20wave%20(1).pdf?alt=media&token=6f3ed939-5cb5-4e4f-b99a-1b077d0c63df')),
      ),
    );
  }
}

