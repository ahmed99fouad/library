import 'dart:async';
import 'package:flutter/material.dart';
import 'package:saker11/database/database_helper.dart';
import 'package:saker11/models/note.dart';
import 'package:saker11/pages/drawer.dart';
import 'package:saker11/screens/note_detail.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pie_chart/pie_chart.dart';
import 'members.dart';

class NoteList extends StatefulWidget {
//  final Note note;
//  NoteList(this.note);

  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  var DrawerScreen1= new DrawerScreen();

  DatabaseHelper databaseHelper = DatabaseHelper();
  Note note;

  List<Note> noteList;

  int count = 0;
  var posi;


  bool toggle = false;

  TextEditingController _titleController ;
  TextEditingController _descriptionController ;
  TextEditingController _locationController;
//  NoteListState(this.note);

  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.teal[200],
    Colors.teal[800],
    Colors.teal[500],
  ];

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("بصمة الإصبع", () => 3);
    dataMap.putIfAbsent("رمز المرور", () => 6);
    dataMap.putIfAbsent("بصمة الوجهة", () => 2);
//    _titleController =new TextEditingController(text: widget.note.title);
//    _descriptionController =new TextEditingController(text: widget.note.description);
//    _locationController =new TextEditingController(text: widget.note.location);
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = List<Note>();
      updateListView();
    }

    return Scaffold(
      appBar: new AppBar(
          title: new Text('لوحة التحكم',
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
              )),
            ),
          ],
          backgroundColor: Colors.teal),
      drawer: new Drawer(
        child: DrawerScreen1,
      ),

      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: getNoteListView(),
                height: MediaQuery.of(context).size.height / 7,
              ),

              new Container(
                alignment: (Alignment.topRight),
                padding: EdgeInsets.all(2.0),
                child: Text('الكتب',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 25.0, color: Colors.teal.withOpacity(0.9))),
              ),
              new Row(
                mainAxisSize: MainAxisSize.min,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: new FlatButton(
                      onPressed: () {
                        debugPrint('FAB clicked');
                        navigateToDetail(
                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
                      color: Colors.teal.withOpacity(0.9),
                      child: new Text(
                        'اضافة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white.withOpacity(.9)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 7.0, left: 7.0),
                    child: new FlatButton(
                      onPressed: (){
//    {

//                        if (widget.note.id != null){
//                          databaseHelper.updateNote(Note.fromMapObject({
//                            'name' :_titleController.text,
//                            'description' :_descriptionController.text,
//                            'location' :_locationController.text,
//                          })).then((_){
//                            Navigator.pop(context,'update');
//                          });
//                        }

//                        debugPrint('FAB clicked');
//                        navigateToDetail(
//                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
                      //                      onPressed: () => _update(context, items[position]),
                      color: Colors.teal.withOpacity(0.9),
                      child: new Text(
                        'تعديل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white.withOpacity(.9)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5.0),
                    child: new FlatButton(
                      onPressed: () {
//                        debugPrint('FAB clicked');
//                        navigateToDetail(
//                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
//                      onPressed: ()=>
//                        _delete(context,noteList[posi])
//
//                      ,
                      //  onPressed: () =>
//                          _delete(context, items[position], position),
                      color: Colors.teal.withOpacity(0.9),
                      child: new Text(
                        'حذف',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white.withOpacity(.9)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                ],
              ),
              new Container(
                alignment: (Alignment.topRight),
                padding: EdgeInsets.only(right: 10.0, bottom: 5.0, top: 5.0),
                child: Text('الأعضاء',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 25.0, color: Colors.teal.withOpacity(0.9))),
              ),
              new Row(
                textDirection: TextDirection.rtl,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: new FlatButton(
                      onPressed: () {
                        debugPrint('FAB clicked');
                        navigateToMembers(
                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
                      color: Colors.teal.withOpacity(0.9),
                      child: Text(
                        'تسجيل',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7.0, right: 7.0),
                    child: new FlatButton(
                      color: Colors.teal.withOpacity(0.9),
                      onPressed: () {
//                        debugPrint('FAB clicked');
//                        navigateToMembers(
//                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
                      child: new Text(
                        'تعديل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white.withOpacity(.9)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5.0),
                    child: FlatButton(
                      color: Colors.teal.withOpacity(0.9),
                      onPressed: () {
//                        debugPrint('FAB clicked');
//                        navigateToMembers(
//                            Note('', '', 2, '', '', ''), 'Add Note');
                      },
                      child: new Text(
                        'حظر',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white.withOpacity(.9)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.teal.withOpacity(.7),
                margin: EdgeInsets.only(top: 22.0),
                padding: EdgeInsets.only(left: 135.0),
                width: double.infinity,
//                padding: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('احصائيات',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.white.withOpacity(0.9))),
                  ],
                ),
              ),

              new Container(
                alignment: (Alignment.centerRight),
                padding: EdgeInsets.all(9.0),
                child: Text('طرق التسجيل',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 24.0, color: Colors.teal.withOpacity(0.9))),
              ),
              Container(
                child: Center(
                  child: toggle
                      ? PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 32.0,
                          chartRadius: MediaQuery.of(context).size.width / 2.7,
                          showChartValuesInPercentage: true,
                          showChartValues: true,
                          showChartValuesOutside: false,
                          chartValueBackgroundColor: Colors.grey[200],
                          colorList: colorList,
                          showLegends: true,
                          legendPosition: LegendPosition.right,
                          decimalPlaces: 1,
                          showChartValueLabel: true,
                          initialAngle: 0,
                          chartValueStyle: defaultChartValueStyle.copyWith(
                            color: Colors.blueGrey[900].withOpacity(0.9),
                          ),
                          chartType: ChartType.disc,
                        )
                      : Text(
                          "اضغط هنا",
                          style: TextStyle(
                              color: Colors.teal.withOpacity(.8),
                              fontSize: 20.0),
                        ),
                ),
              ),
              FloatingActionButton(
                onPressed: togglePieChart,
                child: Icon(Icons.insert_chart),
              ),

//               Image.asset('images/Icon awesome-chart-pie.png'),
              new Container(
                alignment: (Alignment.centerRight),
                padding: EdgeInsets.only(right: 10.0, top: 6.0),
                child: Text('الأقسام',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 24.0, color: Colors.teal.withOpacity(0.9))),
              ),
              Container(
                child: Image.asset('images/Icon awesome-chart-bar.png'),
              ),
            ],
          ),
        ],
      ),

    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  getPriorityColor(this.noteList[position].priority),
              child: getPriorityIcon(this.noteList[position].priority),
            ),
            title: Text(
              this.noteList[position].title,
              style: titleStyle,
            ),
            subtitle: Text(this.noteList[position].date),
            trailing: GestureDetector(
              child: Icon(
                Icons.delete,
                color: Colors.teal[300],
              ),
              onTap: () {
                _delete(context, noteList[position]);
              },
            ),
            onTap: () {
              tapped(this.noteList[position]);
//              debugPrint("ListTile Tapped");
//              navigateToDetail(this.noteList[position],'Edit Note');
            },
          ),
        );
      },
    );
  }

  // Returns the priority color
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

  // Returns the priority icon
  Icon getPriorityIcon(int priority) {
    switch (priority) {
      case 1:
        return Icon(Icons.play_arrow);
        break;
      case 2:
        return Icon(Icons.keyboard_arrow_right);
        break;

      default:
        return Icon(Icons.keyboard_arrow_right);
    }
  }

  void _delete(BuildContext context, Note note) async {
    int result = await databaseHelper.deleteNote(note.id);
    if (result != 0) {
      _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void navigateToDetail(Note note, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note, title);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void navigateToMembers(Note note, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Members(note, title);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }

  void tapped(Note note) {
    setState(() {
      if (note.priority == 2) {
        navigateToDetail(note, 'Edit Note');
      } else if (note.priority==1) {
        navigateToMembers(note, 'Edit Note');
      }
    });

  }
}
