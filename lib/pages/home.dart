import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saker11/pages/about.dart';
import 'package:saker11/pages/details.dart';
import 'package:saker11/pages/helpcom.dart';
import 'package:saker11/pages/infographic.dart';
import 'package:saker11/pages/question.dart';
import 'package:saker11/pages/services.dart';
import 'package:saker11/pages/test.dart';
import 'package:saker11/pages/websites.dart';
import 'package:saker11/screens/note_list.dart';
import 'package:saker11/search/search.dart';

import 'location.dart';
import 'login.dart';
import 'menu_item.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: Text(
          " مكتبه الكليه ",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body:
      new Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
//

                new Container(
                  constraints: new BoxConstraints.expand(
                    height: 200.0,
                  ),
                  alignment: Alignment.topCenter,
//                  padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('homeimage/library.png'),
                      fit: BoxFit.cover,
                    ),

                  ),
                  child:Container(
                    margin: EdgeInsets.only(top: 50.0),

                    child:  new Image.asset('homeimage/hello.png',
                    ),

                  ),



                ),

                new Container(
                  width:MediaQuery.of(context).size.width*2,

                  child: new Text(
                    ' الاكثر قراءه  ',
                    style: TextStyle(color: Colors.white, fontSize: 30,  ),
                    textAlign: TextAlign.center,

                  ),
                  color: Colors.teal.shade600,


                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(

                  children: <Widget>[
                    Column(

                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.25,
                          width:MediaQuery.of(context).size.width*0.25,

                          child:  new Image.asset('homeimage/python.jpg',
                            height: 140.0,
                          ),
                          color: Colors.blue.shade900,


                        ),

                      ],
                    ),

                    Column(
                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.25,
                          width:MediaQuery.of(context).size.width*0.25,

                          child:  new Image.asset("homeimage/network.jpg",
                            height: 140.0,


                          ),
                          color: Colors.black,

                        )

                      ],
                    ),

                    Column(
                      children: <Widget>[


                        Container(


                          height:MediaQuery.of(context).size.height*0.25,
                          width:MediaQuery.of(context).size.width*0.25,
//
//                          child:  new Image.asset('homeimage/java.jpg',
//
//                            height: 140.0,
//
//                          ),

                        child:  InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>details()));                      },
                          child:
                          Image.asset("homeimage/java.jpg",

                          ),
                        ),
                          color: Colors.brown,




                        ),


                      ],
                    ),

                    Column(
                      children: <Widget>[

                        Container(

                          height:MediaQuery.of(context).size.height*0.25,
                          width:MediaQuery.of(context).size.width*0.25,
//
                          child:  new Image.asset('homeimage/c.jpg',
                            height: 140.0,

                          ),
                          color: Colors.lightBlueAccent,


                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                new Container(
                  width:MediaQuery.of(context).size.width*2,

                  child: new Text(
                    '  اقسام المكتبه  ',
                    style: TextStyle(color: Colors.white, fontSize: 30,  ),
                    textAlign: TextAlign.center,

                  ),
                  color: Colors.teal.shade600,


                ),


                Row(

                  children: <Widget>[
                    Column(

                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,

                          child:  new Image.asset('homeimage/Group4.png',
                            height: 140.0,
                          ),


                        ),

                      ],
                    ),
                    SizedBox(
                      width: 5.0,
                    ),

                    Column(
                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,

                          child:  new Image.asset("homeimage/Group5.png",
                            height: 140.0,


                          ),

                        )

                      ],
                    ),
                    SizedBox(
                      width: 5.0,
                    ),

                    Column(
                      children: <Widget>[

                        Container(

                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,
//
                          child:  new Image.asset('homeimage/Group6.png',
                            height: 140.0,

                          ),


                        ),

                      ],
                    ),



                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(

                  children: <Widget>[
                    Column(

                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,

                          child:  new Image.asset('homeimage/Group7.png',
                            height: 140.0,
                          ),


                        ),

                      ],
                    ),  SizedBox(
                      width: 10.0,
                    ),

                    Column(
                      children: <Widget>[

                        Container(
                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,

                          child:  new Image.asset("homeimage/Group8.png",
                            height: 140.0,


                          ),

                        )

                      ],
                    ),
                    SizedBox(
                      width: 5.0,
                    ),

                    Column(
                      children: <Widget>[

                        Container(

                          height:MediaQuery.of(context).size.height*0.30,
                          width:MediaQuery.of(context).size.width*0.30,
//
                          child:  new Image.asset('homeimage/Group9.png',
                            height: 140.0,

                          ),


                        ),

                      ],
                    ),



                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(

                  children: <Widget>[

                    Column(
                      children: <Widget>[

                        Container(

                          height:MediaQuery.of(context).size.height*0.33,
                          width:MediaQuery.of(context).size.width*0.33,
//
                          child:  new Image.asset('homeimage/Group10.png',
                            height: 140.0,

                          ),


                        ),

                      ],
                    ),

                  ],
                ),







              ],
            ),
          ],
        ),
      ),



      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),

              child: new DrawerHeader(
                child: Column(
                  children: <Widget>[


                    Image.asset("homeimage/book.png",width: 80,),
                    SizedBox(
                      height: 0,

                    ),
                    Image.asset("homeimage/fuclty.png",width: 180,height: 73,),
                  ],
                ),


                 ),color: Colors.teal.shade600,),
            new Container (
              color: Colors.teal.shade300,
              child: new Column(
                children: <Widget>[
                  MenuItem(
                    icon: Icons.home,
                    title: "الصفحه الريسيه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen()));



                    },
                  ),

                  MenuItem(
                    icon: Icons.open_in_browser,
                    title: "تسجيل الدخول",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Testuser()));

                    },
                  ),


                  MenuItem(
                    icon: Icons.search,
                    title: "بحث",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));

                    },
                  ),


                  MenuItem(
                    icon: Icons.priority_high,
                    title: "عن المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Aboutscreen()));


                    },
                  ),

                  MenuItem(
                    icon: Icons.live_help,
                    title: "الاسئله المتكرره",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.dehaze,
                    title: "الخدمات",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>services()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.location_on,
                    title: "مكان المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>location()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.local_library,
                    title: "المساعده والتعليق",
                    onTap: () {

                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Helpscreen()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.widgets,
                    title: "انفوجرافيك المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Infographic()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.web,
                    title: "مواقع تهمك",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>websites()));

                    },
                  ),

                  MenuItem(
                    icon: Icons.exit_to_app,
                    title: "تسجيل الخروج ",
                    onTap: () {

                    },
                  ),


                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteList()));               },
                      child:
                      Image.asset("homeimage/control.png",width: 80,height: 80,color: Colors.white,

                      ),
                  ),






                ],

              ),
            )
          ],
        ),
      ),



    );
  }
}
