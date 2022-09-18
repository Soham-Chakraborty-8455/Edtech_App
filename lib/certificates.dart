import 'package:edtech_login_page/Certification/certification.dart';
import 'package:flutter/material.dart';


class certificates extends StatelessWidget {
  const certificates({Key? key}) : super(key: key);

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
          'Certificates',
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
              image: AssetImage('images/Certificate.png'),

            ),
          ),
        ],
      ),

      body: SafeArea(
          child: CertificatePage()
      ),
    );
  }
}

class CertificatePage extends StatefulWidget {
  const CertificatePage({Key? key}) : super(key: key);

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
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
                            builder: (context) => certification(),
                          ),
                        );
                      },
                      child: Text(
                        'CERTIFICATE 1',
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

              ],
            ),

          )
      ),
    );
  }
}

