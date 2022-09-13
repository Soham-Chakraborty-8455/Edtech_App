import 'package:edtech_login_page/certificates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'coursePage.dart';
import 'liveClassPage.dart';
import 'schedulePage.dart';
import 'materialsPage.dart';
import 'certificates.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f4f8),
      appBar: AppBar(
        toolbarHeight: 80.10,
        backgroundColor: Colors.white,
        leading: Image(
          image: AssetImage('images/logo.png'),
          height: 30.00,
          width: 30.00,
        ),
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.00),
              child: Image(
                image: AssetImage('images/logout.png'),
                height: 30.00,
                width: 30.00,
              ),
            ),
          ),
        ],
        title: Text(
              'ED-Tech',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.00,
                fontWeight: FontWeight.bold,
              ),
            ),

        ),

      body: SafeArea(
        child: dashboardPage()
      ),
    );
  }
}
class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20.00),

            CircularPercentIndicator(
              radius: 75.0,
              lineWidth: 10.0,
              percent: 0.7,
              center: CircleAvatar(
                radius: 60.00,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/93662806?s=400&u=5ebda7d133730967b36bc561bbaac696ff2c18a3&v=4'),
              ),
              progressColor: Color(0xFF5271ff),
              backgroundColor: Colors.white,
            ),

            SizedBox(height: 10.00),

            Text(
                '@UserName',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.00,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 20.00),

            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20.00),
              child: HeatMap(
                defaultColor: Color(0xFFeeeeee),
                colorMode: ColorMode.opacity,
                size: 12.00,
                borderRadius: 0.00,
                fontSize: 12.00,
                scrollable: true,
                showText: false,
                colorsets: {
                  1: Colors.green,
                },
                onClick: (value) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
                },
                //TODO: OPERATE HEATMAP ACCORDING TO PRESENT DATE AND PUT A GREEN MARK
              ),
            ),

            SizedBox(height: 20.00),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => coursePage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5.00,
                      child: Container(
                        padding: EdgeInsets.all(10.00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            //TODO: ADD Course IMAGE
                            Image(
                                image: AssetImage('images/Course.png'),
                              height: 28.00,
                              width: 28.00,
                            ),
                            Text(
                                'Courses',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                

                
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => liveClassPage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5.00,
                      child: Container(
                        padding: EdgeInsets.all(10.00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            //TODO: ADD Live Class IMAGE
                            Image(
                              image: AssetImage('images/Live Class.png'),
                              height: 28.00,
                              width: 28.00,
                            ),
                            Text(
                                'Live Class',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.00,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 10.00),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => schedulePage(),
                        ),
                      );
                    },
                    child: Card(

                      elevation: 5.00,
                      child: Container(
                        padding: EdgeInsets.all(10.00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            //TODO: ADD Schedule IMAGE
                            Image(
                              image: AssetImage('images/Schedule.png'),
                              height: 28.00,
                              width: 28.00,
                            ),
                            Text(
                              'Schedule',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => materialsPage(),
                        ),
                      );
                    },
                    child: Card(

                      elevation: 5.00,
                      child: Container(
                        padding: EdgeInsets.all(10.00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            //TODO: ADD Materials IMAGE
                            Image(
                              image: AssetImage('images/Materials.png'),
                              height: 25.00,
                              width: 25.00,
                            ),
                            Text(
                              'Assignments',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 10.00),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => certificates(),
                        ),
                      );
                    },
                    child: Card(

                      elevation: 5.00,
                      child: Container(
                        padding: EdgeInsets.all(10.00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            //TODO: ADD Certificates IMAGE
                            Image(
                              image: AssetImage('images/Certificate.png'),
                              height: 28.00,
                              width: 28.00,
                            ),
                            Text(
                              'Certificates',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Card(

                    elevation: 5.00,
                    child: Container(
                      padding: EdgeInsets.all(10.00),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          //TODO: Ask Doubts IMAGE
                          Image(
                            image: AssetImage('images/Ask a Doubt.png'),
                            height: 28.00,
                            width: 28.00,
                          ),
                          Text(
                            'Ask Doubts',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.00,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 10.00),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(

                    elevation: 5.00,
                    child: Container(
                      padding: EdgeInsets.all(10.00),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          //TODO: ADD Favourites IMAGE
                          Image(
                            image: AssetImage('images/Favourites.png'),
                            height: 28.00,
                            width: 28.00,
                          ),
                          Text(
                            'Favourites',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.00,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Card(

                    elevation: 5.00,
                    child: Container(
                      padding: EdgeInsets.all(10.00),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          //TODO: ADD Settings IMAGE
                          Image(
                            image: AssetImage('images/Settings.png'),
                            height: 28.00,
                            width: 28.00,
                          ),
                          Text(
                            'Settings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.00,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: 5.00,)
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20.00),
          ],
        ),
      ),
    );
  }
}

