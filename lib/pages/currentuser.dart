import 'package:flutter/material.dart';
import 'package:saker11/data/database-helper.dart';
import 'package:saker11/models/user.dart';
import 'package:saker11/pages/newuser.dart';
import 'package:saker11/pages/test.dart';

class Currentuser extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<Currentuser> {
  String _radioValue="";
  String _radioValue2="";

  var loginForm;
  var loginBtn;
  var con1;
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, _password, _jop, _sex, _description;

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user =
        new User(_name, _username, _password, _jop, _sex, null, null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Newuser()));
      });
    }
  }

  bool isButtonPressed = false;
  bool isButtonPressed2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: Text(
          "تسجيل الدخول ",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: new Form(
        key: formKey,
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1.13,
              child: Row(
                children: <Widget>[
//

                  RaisedButton(
                    child: Text(
                      " مستخدم جديد ",
                      style: TextStyle(
                          color: isButtonPressed
                              ? Colors.teal.shade600
                              : Colors.white,
                          fontSize: 25.5),
                    ),
                    color:
                        isButtonPressed ? Colors.white : Colors.teal.shade600,
                    onPressed: () {
                      setState(() {
                        isButtonPressed = !isButtonPressed;
                        isButtonPressed2 = !isButtonPressed2;
                        Navigator.of(context).pop();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Newuser()));
                      });
                    },
                  ),

                  RaisedButton(
                    child: Text(
                      " مستخدم حالي ",
                      style: TextStyle(
                          color: isButtonPressed2
                              ? Colors.teal.shade600
                              : Colors.white,
                          fontSize: 25.5),
                    ),
                    color:
                        isButtonPressed2 ? Colors.white : Colors.teal.shade600,
                    onPressed: () {
                      setState(() {
                        isButtonPressed2 = !isButtonPressed2;
                        isButtonPressed = !isButtonPressed;
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Currentuser()));
                      });
                    },
                  ),
                ],
              ),
            ),
            new Column(
              children: <Widget>[
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 140.0),
                  child: new Text(
                    'اسم المستخدم   ',
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.only(right: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _name = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "الاسم الاول والعائله ",

                    ),
                  ),
                ),
                Divider(
                  height: 5.0,
                  thickness: 1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 140.0),
                  child: new Text(
                    ' هويه المستخدم  ',
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
//            margin: EdgeInsets.only( left: 200.0),
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.only(right: 10.0),

                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _username = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'الرقم او البريد الالكتروني',
                    ),
                  ),
                ),
                Divider(
                  height: 5.0,
                  thickness: 1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 170.0),
                  child: new Text(
                    ' الوظيفه   ',
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          'هيئه معاونه ',
                          style: TextStyle(
                            color: Colors.teal.shade600,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        new Radio(
                          value:  'هيئه معاونه ',
                    groupValue: _radioValue,
                    onChanged: (val) {

                      setState(() {
                           _jop = val;
                        _radioValue = val;

                      });
                    },
                        ),

                        new Text(
                          'عضو هيئه تدريس',
                          style: TextStyle(
                            color: Colors.teal.shade600,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        new Radio(
                          value:  'عضو هيئه تدريس',
                          groupValue: _radioValue,
                          onChanged: (val) {

                            setState(() {
                              _jop = val;
                              _radioValue = val;

                            });
                          },
                        ),



                      ]),
                ),
                Container(
                    alignment: new Alignment(0.0, 1.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            'موظف',
                            style: TextStyle(
                              color: Colors.teal.shade600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          new Radio(
                            value:  'موظف',
                            groupValue: _radioValue,
                            onChanged: (val) {

                              setState(() {
                                _jop = val;
                                _radioValue = val;

                              });
                            },
                          ),
                          new Text(
                            'طالب ',
                            style: TextStyle(
                              color: Colors.teal.shade600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          new Radio(
                            value:  'طالب ',
                            groupValue: _radioValue,
                            onChanged: (val) {

                              setState(() {
                                _jop = val;
                                _radioValue = val;

                              });
                            },
                          ),
                        ])),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          'غير ذلك ( اكتب الوظيفه ادناه) ',
                          style: TextStyle(
                            color: Colors.teal.shade600,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        new Radio(
                          value: 0,
//                    groupValue: _radioValue,
//                    onChanged: _handleRadioValueChange,
                        ),

//
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.only(right: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _jop = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " الوظيفه  ",
                    ),
                  ),
                ),
                Divider(
                  height: 5.0,
                  thickness: 1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 170.0),
                  child: new Text(
                    ' الجنس   ',
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                    alignment: new Alignment(0.0, 1.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'ذكر',
                            style: TextStyle(
                              color: Colors.teal.shade600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          new Radio(
                            value:  'ذكر',
                            groupValue: _radioValue2,
                            onChanged: (val) {

                              setState(() {
                                _sex = val;
                                _radioValue2 = val;

                              });
                            },
                          ),
                          new Text(
                            'انثي ',
                            style: TextStyle(
                              color: Colors.teal.shade600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          new Radio(
                            value:  'انثي ',
                            groupValue: _radioValue2,
                            onChanged: (val) {

                              setState(() {
                                _sex = val;
                                _radioValue2 = val;

                              });
                            },
                          ),
                        ])),
//                Container(
//                  margin: EdgeInsets.only(right: 10.0),
//                  padding: EdgeInsets.only(right: 10.0),
//                  child: TextField(
//                    keyboardType: TextInputType.emailAddress,
//                    textAlign: TextAlign.right,
//                    style: TextStyle(
//                      color: Colors.black,
//                    ),
//                    onChanged: (val) => _sex = val,
//                    decoration: InputDecoration(
//                      border: InputBorder.none,
//                      hintText: " الجنس  ",
//                    ),
//                  ),
//                ),
//                Divider(
//                  height: 5.0,
//                  thickness: 1.0,
//                  color: Colors.teal.shade900.withOpacity(1.0),
//                  indent: 32,
//                  endIndent: 32,
//                ),
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 140.0),
                  child: new Text(
                    'التسجيل باستخدام',
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.only(right: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _password = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " اضافه رمز المرور",
                    ),
                  ),
                ),
                Divider(
                  height: 5.0,
                  thickness: 1.0,
                  color: Colors.teal.shade900.withOpacity(1.0),
                  indent: 32,
                  endIndent: 32,
                ),
                SizedBox(
                  height: 30,
                ),
                loginBtn = new RaisedButton(
                  onPressed: _submit,
                  child: Text(
                    "تسجيل ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black26)),
                  color: Colors.teal.shade400,
                ),
              ],
            ),
//            loginForm
          ],
        ),
        // margin: const EdgeInsets.only(left: 50.0, top: 25, right: 50),
      ),
    );
  }


}
