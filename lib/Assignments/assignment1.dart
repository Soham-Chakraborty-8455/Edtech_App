import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class assignment1 extends StatelessWidget {
  const assignment1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/edtech-app-8ee51.appspot.com/o/Assignments%2FAssignment1%2Faec.pdf?alt=media&token=450cb7d9-d32a-4452-9c63-5e77ceb795eb')),
      ),
    );
  }
}

