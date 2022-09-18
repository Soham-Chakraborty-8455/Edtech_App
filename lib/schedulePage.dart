import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class schedulePage extends StatelessWidget {
  const schedulePage({Key? key}) : super(key: key);

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
          'Schedule',
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
              image: AssetImage('images/Schedule.png'),

            ),
          ),
        ],
      ),

      body: SafeArea(
          child: SchedulePage()
      ),
    );
  }
}

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.month,
      initialSelectedDate: DateTime.now(),
    );
  }
}


