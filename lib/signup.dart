import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'resources/auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return signupPage();
  }
}

class signupPage extends StatefulWidget {
  const signupPage({Key? key}) : super(key: key);

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {

  TextEditingController SchoolNamecontroller=TextEditingController();
  TextEditingController AdmissionNumbercontroller=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),

            Expanded(
              flex: 3,
              child:Container(
                margin: EdgeInsets.all(20.00),
                decoration: BoxDecoration(
                    color: Color(0xFFb5fae6),
                    borderRadius: BorderRadius.circular(30.00)
                ),
                child:ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 40.00),
                      child: Text(
                        'REGISTRATION',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.00,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.00),
                      decoration: BoxDecoration(
                          color: Color(0xFFecf4f4),
                          borderRadius: BorderRadius.circular(30.00)
                      ),
                      child: TextField(
                        controller: SchoolNamecontroller,
                        showCursor: true,
                        decoration: const InputDecoration(
                          errorBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left:20.00),
                          labelText: 'School Name',
                          labelStyle: TextStyle(
                            color: Color(0xFF747677),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:20.00,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.00),
                      decoration: BoxDecoration(
                          color: Color(0xFFecf4f4),
                          borderRadius: BorderRadius.circular(30.00)
                      ),
                      child: TextField(
                        controller: AdmissionNumbercontroller,
                        showCursor: true,
                        decoration: const InputDecoration(
                          errorBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left:20.00),
                          labelText: 'Admission Number',
                          labelStyle: TextStyle(
                            color: Color(0xFF747677),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:20.00,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.00),
                      decoration: BoxDecoration(
                          color: Color(0xFFecf4f4),
                          borderRadius: BorderRadius.circular(30.00)
                      ),
                      child: TextField(
                        controller: namecontroller,
                        showCursor: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          errorBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left:20.00),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xFF747677),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:20.00,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.00),
                      decoration: BoxDecoration(
                          color: Color(0xFFecf4f4),
                          borderRadius: BorderRadius.circular(30.00)
                      ),
                      child: TextField(
                        controller: passwordcontroller,
                        showCursor: true,
                        obscureText: true,
                        decoration: const InputDecoration(
                            errorBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left:20.00),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xFF747677),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 20.00
                    ),
                    Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 30.00),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('SignUp'),
                          onPressed: () async {
                            try {
                              String res= await AuthMethods().SignUpUser(
                                  SchoolName: SchoolNamecontroller.text,
                                  AdmissionNumber: AdmissionNumbercontroller.text,
                                  email: namecontroller.text,
                                  password: passwordcontroller.text
                              );
                              if (res != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => dashboard()),
                                );
                              }
                            } catch (e) {
                              print(e);
                            }
                          }
                          //TODO: Authentication Needed
                        )
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

