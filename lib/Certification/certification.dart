import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class certification extends StatefulWidget {
  const certification({Key? key}) : super(key: key);

  @override
  State<certification> createState() => _certificationState();
}

class _certificationState extends State<certification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: SfPdfViewer.network("https://firebasestorage.googleapis.com/v0/b/edtech-app-8ee51.appspot.com/o/Certificates%2FSoham%20Chakraborty's%20certificate%20for%20Meta%20Hacker%20Cup%20-%202022.pdf?alt=media&token=4e0ca9ee-d37e-4753-8c89-29095b899508")),
      ),
    );
  }
}
