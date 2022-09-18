import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class assignment3 extends StatefulWidget {
  const assignment3({Key? key}) : super(key: key);

  @override
  State<assignment3> createState() => _assignment3State();
}

class _assignment3State extends State<assignment3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/edtech-app-8ee51.appspot.com/o/Assignments%2FAssignment3%2Fmlh-member-event-guidelines.pdf?alt=media&token=57e86816-1ffc-41b7-a100-d6d6ae4b5d04')),
      ),
    );
  }
}

