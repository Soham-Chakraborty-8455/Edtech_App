import 'package:flutter/material.dart';
import 'package:edtech_login_page/courses/videoplayerpage.dart';
import 'package:edtech_login_page/resources/firebase_api.dart';
import 'package:edtech_login_page/resources/firebase_file.dart';
import 'package:edtech_login_page/courses/videoplayerpage.dart';

class course1 extends StatelessWidget {
  const course1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Courses1()),
    );
  }
}

class Courses1 extends StatefulWidget {
  const Courses1({Key? key}) : super(key: key);

  @override
  State<Courses1> createState() => _Courses1State();
}

class _Courses1State extends State<Courses1> {
  late Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseApi.listAll('Courses/Module 1- Laser Optics/');
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FirebaseFile>>(
      future: futureFiles,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Center(child: Text('Some error occurred!'));
            } else {
              final files = snapshot.data!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(files.length),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView.builder(
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                        final file = files[index];

                        return buildFile(context, file);
                      },
                    ),
                  ),
                ],
              );
            }
        }
      },
    );
  }
  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
    title: Center(
      child: Text(
        file.name,
        style: TextStyle(
          fontSize: 20.00,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),

      ),
    ),
    onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => VideoPlayerApp(),
        ),
      );
    },
  );

  Widget buildHeader(int length) => ListTile(
    tileColor: Colors.blue,
    leading: Container(
      width: 52,
      height: 52,
      child: Icon(
        Icons.file_copy,
        color: Colors.white,
      ),
    ),
    title: Text(
      '$length Files',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
