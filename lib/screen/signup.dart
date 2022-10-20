import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign up your account", style: TextStyle(
                fontSize: 36, color: Colors.teal.shade800,
                fontWeight: FontWeight.w700,


              ),),
              SizedBox(
                height: 44.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail,)
                ),

              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock)
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock)
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(" Already has an account!",style: TextStyle(
                  color: Colors.teal.shade800,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(
                height: 48.0,
              ),
              Container(
                alignment: Alignment.center,
                child:
                TextButton(
                  style:
                  ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor: MaterialStateProperty.all(Colors.teal.shade800)
                  ),
                  onPressed: () { },
                  child: Text('Sign Up', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),
                )
                ,
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.facebook),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue)
                      ),
                      label: Text(
                      "Facebook",
                    ),),

                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: ElevatedButton.icon(onPressed: (){}, icon: Icon(FontAwesomeIcons.google),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.orange)
                          ),
                          label: Text(
                          "Google"
                      )),
                    ),
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
