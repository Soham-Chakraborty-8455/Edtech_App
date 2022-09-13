import 'package:flutter/material.dart';

class liveClassPage extends StatelessWidget {
  const liveClassPage({Key? key}) : super(key: key);

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
          'Live Classes',
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
              image: AssetImage('images/Live Class.png'),

            ),
          ),
        ],
      ),

      body: SafeArea(
          child: LiveClassPage()
      ),
    );
  }
}

class LiveClassPage extends StatefulWidget {
  const LiveClassPage({Key? key}) : super(key: key);

  @override
  State<LiveClassPage> createState() => _LiveClassPageState();
}

class _LiveClassPageState extends State<LiveClassPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(),
    );
  }
}

