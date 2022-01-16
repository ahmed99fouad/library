import 'package:flutter/material.dart';
import 'package:saker11/data/database-helper.dart';
import 'package:saker11/models/user.dart';
import 'package:platform_alert_dialog/platform_alert_dialog.dart';
import 'package:saker11/pages/drawer.dart';


class Helpscreen extends StatefulWidget {
  @override
  _helpScreenState createState() => _helpScreenState();
}



class _helpScreenState extends State<Helpscreen> {
  var DrawerScreen1= new DrawerScreen();

  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username,_description;

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        form.save();
        var user = new User(_name, _username,null,null,null, _description,null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {

            Future.delayed(Duration(seconds: 30));

            return PlatformAlertDialog(
              title: Text('comment'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('thanks for your effort we will see your comment'),
                    //Text('please press login to use the app'),
                  ],
                ),
              ),
              actions: <Widget>[
                PlatformDialogAction(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                PlatformDialogAction(
                  child: Text('ok'),
                  actionType: ActionType.Preferred,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      appBar:AppBar(
        backgroundColor: Colors.teal.shade600,

        title: Text(
          "  المساعده والتعليق ",
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ) ,
      drawer: new Drawer(
        child: DrawerScreen1,
      ),

      body: new Form(
        key: formKey,

        child:ListView(
          children: <Widget>[

            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only( right: 10.0,top: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,
                  child: new Image.asset('homeimage/help.png'),



                ),






                Container(
                    alignment: new Alignment(0.0, 1.0),
                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          ' الاسم  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.right,

                        ),

                      ],
                    )
                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,


                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,

                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _name = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:" اسم المستخدم",

                    ),
                  ),

                ),


                Divider(
                  height: 5.0,
                  thickness:1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),


                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only( left: 140.0),


                  child: new Text(
                    ' هويه المستخدم  ',
                    style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                    textAlign: TextAlign.right,

                  ),

                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,


                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,

                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _username = val,

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:" الرقم او البريد الالكتروني ",

                    ),
                  ),

                ),


                Divider(
                  height: 5.0,
                  thickness:1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),






                Container(
                    alignment: new Alignment(0.0, 1.0),
                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          ' التعليق  ',
                          style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                          textAlign: TextAlign.right,

                        ),

                      ],
                    )
                ),


//

                Container(
                    alignment: new Alignment(0.0, 1.0),
                    margin: EdgeInsets.only( left: 140.0),
                    padding: EdgeInsets.only(right: 15.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Image.asset('homeimage/lines.png'),

                      ],
                    )
                ),


                Container(
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,


                  child:  TextField(
                    textAlign: TextAlign.right,
                    textInputAction: TextInputAction.newline,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,

                    style: TextStyle(
                      color: Colors.black26,
                    ),
                    onChanged: (val) => _description = val,

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"    اكتب تعليقك هنا ",

                    ),
                  ),

                ),


                Divider(
                  height: 5.0,
                  thickness:1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),




                Divider(
                  height: 5.0,
                  thickness:1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),



                RaisedButton(


                  child: Text("ارسال " ,
                    style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                  ),
                  onPressed: _submit,

                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black26)
                  ),
                  color: Colors.teal.shade400,



                ),





              ],


            ),

          ],

        ),

      ),





    );
  }


}



