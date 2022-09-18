import 'package:flutter/material.dart';
import 'package:edtech_login_page/courses/course1.dart';
import 'package:edtech_login_page/courses/course2.dart';
import 'package:edtech_login_page/courses/course3.dart';

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
      child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 20.00,
                ),
                Card(
                  color: Colors.white,
                  elevation: 5.00,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => course1(),
                          ),
                        );
                      },
                      child: Text(
                        'COURSE 1',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 25.00,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.00,
                ),
                Card(
                  color: Colors.white,
                  elevation: 5.00,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => course2(),
                          ),
                        );
                      },
                      child: Text(
                        'COURSE 2',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 25.00,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.00,
                ),
                Card(
                  color: Colors.white,
                  elevation: 5.00,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => course3(),
                          ),
                        );
                      },
                      child: Text(
                        'COURSE 3',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 25.00,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

          )
      ),
    );
  }
}

