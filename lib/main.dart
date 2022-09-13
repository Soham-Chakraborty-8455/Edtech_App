import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const Edtech());
}

class Edtech extends StatelessWidget {
  const Edtech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginPage(),
    );
  }
}



