import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signup.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
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
                        'WELCOME  BACK',
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
                        controller: namecontroller,
                        showCursor: true,
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
                          child: const Text('Login'),
                          onPressed: () {
                            print(namecontroller.text);
                            print(passwordcontroller.text);
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => dashboard()),
                            );
                          },
                          //TODO: Authentication Needed
                        )
                    ),
                    SizedBox(
                      height: 10.00,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        'Create New Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.purple[800],
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                          //TODO: Create new account OnPressed function call
                        ),
                      ),
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