
import 'package:flutter/material.dart';
import 'package:saker11/pages/drawer.dart';
import 'package:saker11/pages/showMap.dart';
import 'login.dart';
import 'menu_item.dart';

void main() => runApp(location());

class location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {


  var DrawerScreen1= new DrawerScreen();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(

        backgroundColor: Colors.teal.shade600,
        title: new Text('مكان المكتبة',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.0,
          ),


        ),
        centerTitle: true,

      ),

        drawer: new Drawer(
          child: DrawerScreen1,
        ),


      body: new Column(


        children: <Widget>[


          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[



              new Container(
                height: 250.0,
                child: new Stack(
                  children: <Widget>[
                    new Center(


                        child: new Container(
                          margin: EdgeInsets.only(top: 10.0),

                          child: new Text(
                            "map sould show here !",
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(20.0),
                        )),
                    new InkWell(

                      child: new Center(
                        child: new Image.asset("homeimage/map.png",width: 290,height: 260,),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>showMap()));

                      },
                    )
                  ],
                ),
              ),
              new Container(
                alignment: new Alignment(0.0, 1.0),
                child: new Text('العنوان',
                    style: TextStyle(
                        fontSize: 25.0, color: Colors.teal.withOpacity(0.9))),
//                  margin: EdgeInsets.only(bottom: 550.0, left: 250.0),
              ),


              new Container(
//            alignment: new Alignment(0.0, 1.0),
//                  margin: EdgeInsets.only(left: 40.0,right: 20.0 ),

                child: new Text(' - شارع جمال عبد الناصر - مجمع الكليات',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.2,
                        color: Colors.black26.withOpacity(0.4))),


              ),

              new Container(
//            alignment: new Alignment(0.0, 1.0),
//                  margin: EdgeInsets.only(left: 40.0,right: 20.0 ),

                child:  new Text(' كلية الحاسبات والمعلومات - الدور التاني علوي',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20.2,
                        color: Colors.black26.withOpacity(0.4))),

              ),



            ],
          )
        ],

      )


    );
  }


}