import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:intl/intl.dart';

import 'package:saker11/database/database_helper.dart';
import 'package:saker11/models/note.dart';
import 'package:saker11/pages/drawer.dart';
import 'package:sqflite/sqflite.dart';

import 'login_presenter.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => new _searchState();
}

// ignore: camel_case_types
class _searchState extends State<search> implements SearchCallBack {
  var DrawerScreen1= new DrawerScreen();

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;
  Note note;
  var _myActivity = '';
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext _ctx;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

  bool _isLoading = false;
  final String columnUserTitle = "title";
  final String columnAge = "age";
  final String columnLocation = "location";
  String _title, _date, _location;
  LoginPagePresenter _presenter;
  Widget searchResult;
  _searchState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _search() async {
    final form = formKey.currentState;
    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doSearch(_title, _date, _location);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  void onSearchSuccess(Note note) async {
//    print(note.date);
    if (note != null) {
      print("done");
      setState(() {
        noteList.add(note);
      });
    } else {
      print("Not found");
      _showAlertDialog('Status', 'No matched data');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _myActivity = 'اسم الكتاب';
    searchResult = SizedBox();
    noteList = [];
//    databaseHelper.getNoteMapList().then((notes) {
//      setState(() {
//        notes.forEach((note) {
//          noteList.add(Note.fromMapObject(note));
//        });
//      });
//    });
  }

//  _saveForm() {
//    var form = formKey.currentState;
//    if (form.validate()) {
//      form.save();
//      setState(() {
//        _myActivityResult = _myActivity;
//      });
//    }
//  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      key: scaffoldKey,
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
                  size: 26.0,
//                  textDirection: TextDirection.ltr,
                ),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: Colors.teal),

      backgroundColor: Colors.white,
      drawer: new Drawer(
        child: DrawerScreen1,
      ),
      body: ListView(
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                new Container(
                  alignment: (Alignment.topRight),
                  padding: EdgeInsets.only(top: 9.0, right: 12.0, bottom: 10.0),
                  child: Text('بحث باستخدام',
                      textAlign: TextAlign.right,
//                    textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 19.0, color: Colors.teal.withOpacity(0.9))),
                ),
                Container(
//                color: Colors.white70,
                  height: MediaQuery.of(context).size.height / 15.3,
                  width: MediaQuery.of(context).size.width / 1.2,

                  decoration: ShapeDecoration(
                    color: Colors.blueGrey.withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.teal.withOpacity(.8)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 7.0),
                    child: DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.teal.withOpacity(.8),
                        ),
                        style: TextStyle(
                          color: Colors.teal.withOpacity(.8),
                          fontSize: 18.0,
//                        height: 1.0,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _myActivity = value;
                          });
                        },
                        value: _myActivity,
                        items: <String>[
                          'عنوان الكتاب',
                          'اسم الكتاب',
                          'تاريخ النشر'
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                new Container(
                  alignment: (Alignment.topRight),
                  padding: EdgeInsets.only(top: 7.0, right: 12.0),
                  child: Text('بحث عن',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 19.0, color: Colors.teal.withOpacity(0.9))),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 40.0, right: 40.0, bottom: 5.0),
                  child: TextFormField(
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'enter valid text';
                      } else {
                        return null;
                      }
                    },
                    controller: _titleController,
//                  onTap: () =>
//                      showSearch(context: context, delegate: DataSearch()),
                    textAlign: TextAlign.right,
                    onChanged: (val) => _title = val,
                    decoration: InputDecoration(
                        hintText: ' اسم الكتاب',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey.withOpacity(0.7),
                        )),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 40.0, right: 40.0, bottom: 5.0),
                  child: TextFormField(
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'enter valid text';
                      } else {
                        return null;
                      }
                    },
                    controller: _locationController,
//                  onTap: () =>
//                      showSearch(context: context, delegate: DataSearch()),
                    textAlign: TextAlign.right,
                    onChanged: (val) => _location = val,
                    decoration: InputDecoration(
                        hintText: ' عنوان الكتاب',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey.withOpacity(0.7),
                        )),
                  ),
                ),
//                Container(
//                  padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 5.0),
//                  child: TextFormField(
//                    controller: _dateController,
//                    validator: (val) {
//                      if (val.isEmpty) {
//                        return 'enter valid text';
//                      } else {
//                        return null;
//                      }
//                    },
////                  onTap: () =>
////                      showSearch(context: context, delegate: DataSearch()),
//                    textAlign: TextAlign.right,
//                    onChanged: (val) => _date = val,
//                    decoration: InputDecoration(
//                        hintText: ' تاريخ النشر',
//                        hintStyle: TextStyle(
//                          color: Colors.blueGrey.withOpacity(0.7),
//                        )),
//                  ),
//                ),
                new Container(
                  padding: EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width / 2,
                  child: new RaisedButton(
                    onPressed: () => _search(),
                    color: Colors.teal.withOpacity(0.7),
                    child: Text(
                      'بحث',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),

                new Container(
                  padding: EdgeInsets.only(top: 15.0),

                  decoration: ShapeDecoration(
                    color: Colors.blueGrey.withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.teal.withOpacity(.8)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Container(
                    child: getNoteListView(),
                    height: MediaQuery.of(context).size.height / 1.7,
                  ),
//                margin: EdgeInsets.only(top: 30.0, left: 20.0),
                ),

//              Container(
//                padding: EdgeInsets.all(2.0),
//                child: Text(_myActivityResult),
//              ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
//   setState(() {
//     searchResult  =  Text('${note.title} - ${note.date} - ${note.location}');
//   });


    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemCount: noteList.length,
      padding: EdgeInsets.all(15),
      itemBuilder: (context, int position) {
        return new Card(
          child: new Container(
            child: new Center(
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "الاسم: " + noteList[position].title,

                            // set some style to text
                            style: new TextStyle(
                                fontSize: 17.0, color: Colors.teal),
                          ),
                          new Text("العنوان: "
                             + noteList[position].location,

                            // set some style to text
                            style: new TextStyle(
                                fontSize: 17.0, color: Colors.teal),
                          ),
                          new Text(
                            "التاريخ: " + noteList[position].date,
                            // set some style to text
                            style: new TextStyle(
                                fontSize: 17.0, color: Colors.teal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Color getPriorityColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.teal;
        break;
      case 2:
        return Colors.teal[300];
        break;

      default:
        return Colors.teal[300];
    }
  }

  Icon getPriorityIcon(int priority) {
    switch (priority) {
      case 1:
        return Icon(Icons.play_arrow);
        break;
      case 2:
        return Icon(Icons.keyboard_arrow_right);
        break;

      default:
        return Icon(Icons.play_arrow);
    }
  }

  _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
