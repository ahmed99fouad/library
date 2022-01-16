import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/test.dart';




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),
            ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Currentuser()))


    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('Library'),
          centerTitle: true,
          toolbarOpacity: 0.7,
          backgroundColor: Colors.black26),
      backgroundColor: Colors.teal,
      body: Stack(
        children: <Widget>[
          new Container(
            alignment: new Alignment(0.80, 1.0),
            child: new Image.asset('homeimage/logo.png'),
            margin: EdgeInsets.only(bottom: 600.0, right: 20.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Image.asset('homeimage/logoo.png'),
            margin: EdgeInsets.only(bottom: 600.0, right: 115.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text('|',
                style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white.withOpacity(0.8))),
            margin: EdgeInsets.only(bottom: 610.0, right: 0.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Image.asset('homeimage/Group.png'),
            margin: EdgeInsets.only(bottom: 350.0, right: 10.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text(' مكتبة',
                style: TextStyle(
                    fontSize: 29.0, color: Colors.white.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 272.0, right: 10.0),
          ),
          new Container(
            alignment: new Alignment(0.0, 1.0),
            child: new Text(' كلية الحاسبات والمعلومات ',
                style: TextStyle(
                    fontSize: 26.0, color: Colors.white.withOpacity(0.9))),
            margin: EdgeInsets.only(bottom: 225.0, right: 30.0),
          ),
          new Container(

            alignment: new Alignment(0.0, 1.0),
            child: new SpinKitThreeBounce(
              color: Colors.white30.withOpacity(0.8),
              size: 50.0,
            ),
            margin: EdgeInsets.only(top: 337.0, right: 10.0),
          ),
        ],
      ),
    );
  }
}
