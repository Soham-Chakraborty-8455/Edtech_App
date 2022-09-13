import 'package:flutter/material.dart';

class coursePage extends StatelessWidget {
  const coursePage({Key? key}) : super(key: key);

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
          'Courses',
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
              image: AssetImage('images/Course.png'),

            ),
          ),
        ],
      ),

      body: SafeArea(
          child: CoursePage()
      ),
    );
  }
}

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(),
    );
  }
}

