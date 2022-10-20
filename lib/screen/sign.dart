import 'package:flutter/material.dart';

import '../view/homeView.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}


class _SignState extends State<Sign> {

  bool ishiddenPassword = true;


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
              Text("Login your account", style: TextStyle(
                fontSize: 36, color: Colors.teal.shade800,
                fontWeight: FontWeight.w700,


              ),),
              SizedBox(
                height: 44.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                  hintText: "Username",
                  prefixIcon: Icon(Icons.mail,)
                ),

              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: ishiddenPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,
                        child:
                        Icon(Icons.visibility,color: Colors.grey.shade900,)),
                    prefixIcon: Icon(Icons.lock)
                ),
              ),
             SizedBox(
               height: 12.0,
             ),
             Text("Don't remember your password?",style: TextStyle(
               color: Colors.teal
             ),),
              SizedBox(
                height: 48.0,
              ),
              Container(
                alignment: Alignment.center,
                child:
                Column(
                  children: [
                    TextButton(
                      style:
                      ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor: MaterialStateProperty.all(Colors.teal.shade800)
                      ),
                      onPressed: () { },
                      child: InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                        },
                        child: Text('Login', style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ],
                )
                ,
              ),
            ],

          ),
        ),
      ),
    );
  }
  void _togglePasswordView (){
    // if(ishiddenPassword == true){
    //   ishiddenPassword = false;
    // }else{
    //   ishiddenPassword = true;
    // }
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }

}
