import 'package:flutter/material.dart';

import '../screen/login.dart';
class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100,

          ),

          Column(
            children: <Widget>[

              Container(
                child: Row(
                  children: <Widget>[
                    Row(
                        children:[
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                           child: CircleAvatar(
                             radius: 50,
                             backgroundImage: AssetImage(
                               "images/profile.jpg"
                             ),
                           ),
                          ),
                        ]
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Allen Masud",
                                style: TextStyle(fontSize: 30,
                                    fontWeight: FontWeight.w900),),
                              Text("Bangladesh",
                                style: TextStyle(fontSize: 20, color: Colors.grey),)
                            ]
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Column(
                      children: <Widget>[

                        Text("Language",
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.w500),),
                        Text("English",
                          style: TextStyle(fontSize:15,color: Colors.grey ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon( Icons.chevron_right, ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Column(
                      children: <Widget>[

                        Text("Number",
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.w500),),
                        Text("0169018641",
                          style: TextStyle(fontSize:15,color: Colors.grey ),)
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: <Widget>[

                        Text("Profile setting",
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.w500),),
                        Text("Allen Masud",
                          style: TextStyle(fontSize:15,color: Colors.grey ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon( Icons.chevron_right, ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: <Widget>[

                        Text("Gmail Notifaction",
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.w500),),
                        Text("on",
                          style: TextStyle(fontSize:15,color: Colors.grey ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.check_circle)

                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: <Widget>[

                        Text("Push Notifacation",
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.check_circle)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Column(
                        children: <Widget>[

                          Text("Logout",
                            style: TextStyle(fontSize: 22,
                                fontWeight: FontWeight.w500),),

                        ],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ],
      ),

    );
  }
}
