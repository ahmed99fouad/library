import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:saker11/pages/drawer.dart';

class Search extends StatefulWidget {
  @override
  _searchState createState() => new _searchState();
}

class _searchState extends State<Search> {
  var DrawerScreen1= new DrawerScreen();

  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('بحث',
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
                  size: 27.0,
                  textDirection: TextDirection.ltr,
                ),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: Colors.teal),
      drawer: new Drawer(
        child: DrawerScreen1,
      ),
      body: ListView(
        key: formKey,
        children: <Widget>[
          Column(
            children: <Widget>[
              new Container(
                alignment: (Alignment.topRight),
                padding: EdgeInsets.only(top:8.0,right: 12.0),
                child: Text('بحث باستخدام',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 19.0, color: Colors.teal.withOpacity(0.9))),
              ),
              Container(
//                color: Colors.white70,
                height: MediaQuery.of(context).size.height /9.8,
                width:  MediaQuery.of(context).size.height /2.7,

                decoration: ShapeDecoration(
                  color: Colors.blueGrey.withOpacity(.1),

                  shape: RoundedRectangleBorder(

                    side: BorderSide(width: 1.2, style: BorderStyle.solid,color: Colors.teal.withOpacity(.8)),

                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
//                padding: EdgeInsets.only(top: 2.0,bottom: 1.0),
                child: Container(

                  height: MediaQuery.of(context).size.height /13,

                  child:  DropDownFormField(
                    titleText: '',
                    hintText:'' ,
                    value: _myActivity,
                    onSaved: (value) {
                      setState(() {
                        _myActivity = value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        _myActivity = value;
                      });
                    },
                    dataSource: [

                      {
                        "display": "عنوان الكتاب",
                        "value": "عنوان الكتب",
                      },
                      {
                        "display": "اسم الكتاب",
                        "value": "اسم الكتاب",
                      },
                      {
                        "display": "تاريخ النشر",
                        "value": "تاريخ النشر",
                      },
                    ],
                    textField: 'display',
                    valueField: 'value',
                  ),
                ),

              ),


              new Container(
                alignment: (Alignment.topRight),
                padding: EdgeInsets.only(top:7.0,right: 12.0),
                child: Text('بحث عن',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 19.0, color: Colors.teal.withOpacity(0.9))),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0,right: 40.0,bottom: 5.0),
                child: TextField(textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      hintText: ' كلمة البحث',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey.withOpacity(0.7),

                      )
                  ),
                ),
              ),

              new Container(
                child: new RaisedButton(
                  onPressed: _saveForm,
                  color: Colors.teal.withOpacity(0.8),
                  child: Text(
                    'بحث',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
              new Container(

                padding: EdgeInsets.only(top: 12.0),

                decoration: ShapeDecoration(
                  color: Colors.blueGrey.withOpacity(.1),

                  shape: RoundedRectangleBorder(

                    side: BorderSide(width: 2, style: BorderStyle.solid,color: Colors.teal.withOpacity(.8)),

                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                height: MediaQuery.of(context).size.height /1.9,
                width: MediaQuery.of(context).size.width /1.3,
                child: new Image.asset('homeimage/search.png',fit: BoxFit.fill,
                ),
//                margin: EdgeInsets.only(top: 30.0, left: 20.0),
              ),

              Container(
                padding: EdgeInsets.all(2.0),
                child: Text(_myActivityResult),
              ),



            ],
          ),
        ],
      ),
    );
  }
}
