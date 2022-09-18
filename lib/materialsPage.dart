import 'package:flutter/material.dart';
import 'package:edtech_login_page/Assignments/assignment1.dart';
import 'package:edtech_login_page/Assignments/assignment2.dart';
import 'package:edtech_login_page/Assignments/assignment3.dart';



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
                            builder: (context) => assignment1(),
                          ),
                        );
                      },
                      child: Text(
                        'ASSIGNMENT 1',
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
                            builder: (context) => assignment2(),
                          ),
                        );
                      },
                      child: Text(
                        'ASSIGNMENT 2',
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
                            builder: (context) => assignment3(),
                          ),
                        );
                      },
                      child: Text(
                        'ASSIGNMENT 3',
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
