import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/screen/sign.dart';
import 'package:untitled14/screen/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key, this.onPressed}) : super(key: key);

  final onPressed;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child:
          Column(
            children: [
              Center(
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Welcome to Travels",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w900
                            ),),
                        ),

                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 55.0,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.green.shade800,
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child:
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sign()));
                        },
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Log In", textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      )

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 55.0,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child:
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Register", textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      )

                  ),
                ],
              ),
            ],
          ),


      ),
    );
  }
}
