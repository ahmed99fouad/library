import 'package:flutter/material.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/drawer.dart';

class services extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}



class _FirstScreenState extends State<services> {


  @override
  Widget build(BuildContext context) {
    var DrawerScreen1= new DrawerScreen();

    return Scaffold(

      appBar:AppBar(
        backgroundColor: Colors.teal.shade600,

        title: Text(
          "  الخدمات ",
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
                          ' الخدمات  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.right,

                        ),

                      ],
                    )
                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/ser.png'),



                ),
                Container(
                    alignment: new Alignment(0.0, 1.0),
//                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          ' مواعيد عمل المكتبه  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.right,

                        ),

                      ],
                    )
                ),

                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/open.png'),



                ),

                Container(
                    alignment: new Alignment(0.0, 1.0),
                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          "طرق التوصل",
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.right,

                        ),

                      ],
                    )
                ),

                new Container(
                  margin: EdgeInsets.only(top: 2.0, right: 3.0),
                  padding: new EdgeInsets.only(left: 45.0),
                  child: ListTile(
                    trailing: Icon(Icons.phone, color: Colors.teal.withOpacity(0.9)),
                    title: Text('01007841940 - 01061941525',
                        style: TextStyle(
                          color: Colors.black26.withOpacity(0.5),
                          fontSize: 18.0,
                        )),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 2.0, right: 3.0),
                  padding: new EdgeInsets.only(left: 45.0),
                  child: ListTile(
                    trailing: Icon(Icons.email, color: Colors.teal.withOpacity(0.9)),
                    title: Text('muficlibrary222@Yahoo.com',
                        style: TextStyle(
                          color: Colors.black26.withOpacity(0.5),
                          fontSize: 18.0,
                        )),
                  ),
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
