import 'package:flutter/material.dart';
import 'package:saker11/pages/drawer.dart';

class Question extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _myquestion();
  }
}

class _myquestion extends State<Question> {

    var DrawerScreen1= new DrawerScreen();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
          title: new Text(' الاسئله المتكرره',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26.0,
              )
          ),
          centerTitle: true,
          toolbarOpacity: 0.7,
          actions: <Widget>[
            new Container(
              margin: EdgeInsets.only(right: 10.0),
              child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30.0,
                    textDirection: TextDirection.ltr,
                  )
              ),
            ),
          ],
          backgroundColor: Colors.teal),

      drawer: new Drawer(
        child: DrawerScreen1,
      ),
      backgroundColor: Colors.white,
      body: new Stack(


        children: <Widget>[

          new Container(


//            margin: EdgeInsets.only(bottom: 600.0, top: 10.0),
            padding: new EdgeInsets.only(top: 25.0),
            child: ListView(
              children: ListTile.divideTiles(
                color: Colors.teal.withOpacity(0.9),
                context: context,
                tiles: [
                  ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text(' ما انواع الكتب الموجوده',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ),
                  ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ماهي خدمات المكتبه',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ),
                  ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما انواع المصادر',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ), ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما عدد الكتب',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ), ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('كيفيه الاستعاره',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ), ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما هي سياسه المكتبه',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ), ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما هي انواع المصادر',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ), ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما عدد الكتب',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ),ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما هي خطوات الاستعاره',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ),ListTile(
                    trailing: Icon(Icons.touch_app,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('ما انواع الكتب الموجوده',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
