import 'package:flutter/material.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/drawer.dart';

class Aboutscreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}



class _FirstScreenState extends State<Aboutscreen> {
  var DrawerScreen1= new DrawerScreen();



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar:AppBar(
        backgroundColor: Colors.teal.shade600,

        title: Text(
          " عن المكتبه ",
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ) ,
      drawer: new Drawer(
        child: DrawerScreen1,
      ),
      


      body: new Container(

        child:ListView(
          children: <Widget>[

            Column(
              children: <Widget>[

                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only( left: 140.0),
                  padding: EdgeInsets.only(right: 15.0),


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        ' مقدمه  ',
                        style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                        textAlign: TextAlign.right,

                      ),

                    ],
                  )
                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/built.png'),



                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only( left: 140.0),


                  child: new Text(
                    ' مقتنيات المكتبه  ',
                    style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                    textAlign: TextAlign.right,

                  ),

                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/mok.png'),



                ),











              ],


            ),

          ],

        ),
        // margin: const EdgeInsets.only(left: 50.0, top: 25, right: 50),

      ),





    );
  }


}
