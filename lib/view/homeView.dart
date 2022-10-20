import 'package:flutter/material.dart';
import 'package:untitled14/Drawer/setting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled14/screen/login.dart';
import 'package:untitled14/view/abroad.dart';
import 'package:untitled14/view/bangladesh.dart';
import 'package:untitled14/view/information.dart';
import 'package:untitled14/view/popular.dart';
import 'package:untitled14/view/video.dart';
import 'package:untitled14/view/vlog.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal.shade800,
        title: Text("Welcome"),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search, size: 30,),
        )],
        elevation: 0,

      ),
      drawer: Drawer(
    child: ListView(
    children: [
    DrawerHeader(
    decoration: BoxDecoration(
    color: Colors.teal.shade800
    ),
    child: Center(child: Text('Travel Guidance', style: TextStyle(
    fontSize: 40,
    color: Colors.white
    ),)),
    ),
    ListTile(
    leading: Icon(Icons.home),
    title: Text('Home'),
    iconColor: Colors.teal,
    ),
    ListTile(
    leading: Icon(Icons.my_location),
    title: Text('Travel Bangladesh'),
    iconColor: Colors.teal,
    ),
    ListTile(
    leading: Icon(Icons.public),
    title: Text('Foreign Travel'),
    iconColor: Colors.teal,
    ),
    ListTile(
    leading: Icon(Icons.file_copy),
    iconColor: Colors.teal,
    title: Text("Collected Information"),
    ),
    ListTile(
    leading: Icon(Icons.place),
    title: Text('Tour Plan'),
    iconColor: Colors.teal,
    ),
    ListTile(
    leading: Icon(Icons.house),
    iconColor: Colors.teal,
    title: Text("Hotel And Resort "),
    ),
    ListTile(
    leading: Icon(Icons.share),
    iconColor: Colors.teal,
    title: Text("Share"),
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text("Settings"),
    iconColor: Colors.teal,
    ),
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
      },
      child: ListTile(
      leading: Icon(Icons.logout),
      iconColor: Colors.teal,
      title: Text("Log Out"),
      ),
    )

    ],
    ),
    ),
      body:
      ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 68.0,
            width: double.infinity,
            color: Colors.teal.shade800,
            child:
            Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_rounded, size: 50.0,color: Colors.grey.shade300,),
                    Column(
                      children: [
                        Text(" Guide of Travel ",style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),),
                        Text(" Guide of Travel ",style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w300
                        ),),
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Bangladesh()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.my_location , size: 50,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Bangladesh", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Abroad()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.public  , size: 50,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Abroad", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Vlog()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.art_track , size: 60,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Vlog", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Popular()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.stars , size: 50,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Popular places", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Video()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.ondemand_video, size: 50,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Video", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 190,
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Information()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.file_copy_rounded    , size: 50,color: Colors.teal.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Information", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.teal
                            ),)
                          ],
                        ),
                      ),
                      elevation: 6,
                      shadowColor: Colors.teal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Container(
          //   height: 120.0,
          //   width: 120.0,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //           'assets/cover.jpeg'),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Card(
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue.shade500, size: 48.0,),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.instagram, color: Colors.red.shade300, size: 48.0,),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(FontAwesomeIcons.twitter, color: Colors.blue.shade300, size: 48.0,),

                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.youtube, color: Colors.red, size: 48.0,),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              elevation: 8,
              shadowColor: Colors.teal,
            ),
          )

        ],
      )



    );
  }
}
