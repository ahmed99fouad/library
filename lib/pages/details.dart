import 'package:flutter/material.dart';

class details extends StatefulWidget {
  @override
  _detailsState createState() => new _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('تفاصيل الكتاب',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26.0,
              )),
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
                  )),
            ),
          ],
          backgroundColor: Colors.teal),
      drawer: new Drawer(
        child: new Container(),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('اسم الكتاب',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 625.0, left: 200.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('مقدمة في الجافا',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 595.0, left: 183.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('القسم',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 535.0, left: 270.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('علوم الحاسب',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 505.0, left: 200.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('المؤلف',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 445.0, left: 250.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('تومسونز',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 420.0, left: 240.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('تفاصيل الكتاب',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 367.0, left: 170.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('شرح الجافا للمبتدئين من الصفر للاحتراف',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 335.0, left: 30.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text(' مكون من ثلاتة اجزاء',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 305.0, left: 150.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('مكان الكتاب',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 242.0, left: 180.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('وجهة علوم الحاسب الجزء الثالث',
                style: TextStyle(
                    fontSize: 19.0, color: Colors.black26.withOpacity(0.4))),
            margin: EdgeInsets.only(bottom: 212.0, left: 70.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('حالة الكتاب',
                style: TextStyle(
                    fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 155.0, left: 190.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 0.9),
            margin: EdgeInsets.only(bottom: 85.0, right: 30.0),
            padding: new EdgeInsets.only(left: 200.0),
            child: ListTile(
              trailing:
              Icon(Icons.check,size: 35.0, color: Colors.teal.withOpacity(0.9)),
              title: Text('موجود',
                  style: TextStyle(
                    color: Colors.black26.withOpacity(0.4),
                    fontSize: 18.0,
                  )),
            ),
          ),
          new Container(
            child: new Image.asset('homeimage/java.png'),
            margin: EdgeInsets.only(top: 30.0, left: 20.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 0.9),
            margin: EdgeInsets.only(bottom: 20.0),
            child: new RaisedButton(

              onPressed: (){},
              color: Colors.teal.withOpacity(0.9),
              child: Text(
                'طلب استعارة',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
            ),
          ),
        ],
      ),
    );
  }
}
