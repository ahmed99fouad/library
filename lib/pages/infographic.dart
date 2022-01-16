import 'package:flutter/material.dart';
import 'package:saker11/pages/drawer.dart';

class Infographic extends StatefulWidget {
  @override
  _infoScreenState createState() => _infoScreenState();
}



class _infoScreenState extends State<Infographic> {
  var DrawerScreen1= new DrawerScreen();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:AppBar(
        backgroundColor: Colors.teal.shade600,

        title: Text(
          "   انفوجرافك ",
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
//                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          ' خدمات المكتبه  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.center,

                        ),

                      ],
                    )
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child: RaisedButton(

                    child: Text("خدمات الاطلاع الداخلي " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.pinkAccent.shade200,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:
                  RaisedButton(
                    child: Text("خدمات الاستعاره " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.tealAccent.shade400,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:
                  RaisedButton(
                    child: Text("تسجيل الباحثين والمترددين علي المكتبه " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.deepPurple.shade400,
                  ),




                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:  RaisedButton(
                    child: Text("التسجيل علي بنك معرفه للباحثين " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.lightBlueAccent,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),



                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:
                  RaisedButton(
                    child: Text("التصوير والاستنساخ " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.pinkAccent.shade200,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:                 RaisedButton(
                    child: Text("الاحاطه الجاريه " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.tealAccent.shade400,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:
                  RaisedButton(
                    child: Text("البحث الانتقالي للمعلومات " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.deepPurple.shade400,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),


                new SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child:                 RaisedButton(
                    child: Text("تدريب المستفدين " ,
                      style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                    ),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0),
                        side: BorderSide(color: Colors.black26)
                    ),
                    color: Colors.lightBlueAccent,
                  ),



                ),
                SizedBox(
                  height: 5.0,
                ),



                Container(
                    alignment: new Alignment(0.0, 1.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          ' مواعيد المكتبه  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.center,

                        ),

                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/open.png'),



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
