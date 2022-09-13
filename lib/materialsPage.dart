import 'package:flutter/material.dart';

class materialsPage extends StatelessWidget {
  const materialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f4f8),
      appBar: AppBar(
        toolbarHeight: 80.10,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size:30.00 ,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Assignments',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(12.00),
            child: Image(
              image: AssetImage('images/Materials.png'),

            ),
          ),
        ],
      ),

      body: SafeArea(
          child: MaterialPage()
      ),
    );
  }
}

class MaterialPage extends StatefulWidget {
  const MaterialPage({Key? key}) : super(key: key);

  @override
  State<MaterialPage> createState() => _MaterialPageState();
}

class _MaterialPageState extends State<MaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
