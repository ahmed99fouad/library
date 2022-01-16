import 'package:flutter/material.dart';
import 'package:saker11/models/user.dart';
import 'package:saker11/pages/Finger.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/home.dart';
import 'package:saker11/pages/login_presenter.dart';
import 'package:saker11/data/database-helper.dart';

class Newuser extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<Newuser> implements LoginPageContract {
  BuildContext _ctx;

  TextEditingController _nameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  DatabaseHelper db;

  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  User user;
  final String columnUserName = "username";
  final String columnPassword = "password";
  String _username, _password;


  LoginPagePresenter _presenter;

  _FirstScreenState() {
    _presenter = new LoginPagePresenter(this);
  }


  void _submit() async{

    final form = formKey.currentState;
    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_username, _password);

      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }


  @override
  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
//    if (user.username == "") {
//      _showSnackBar("Login not successful");
//    } else {
//      _showSnackBar(user.toString());
//    }

    if (user!=null) {
      print("Logged");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homeScreen()));
    }
    else {
      print("Not Logged");
      _showSnackBar(user.toString());
//      Scaffold.of(context).showSnackBar(
//          SnackBar(content: Text("Wrong name or password")));
      setState(() {
        _isLoading = false;
      });
    }
  }

  bool isButtonPressed = false;
  bool isButtonPressed2 = true;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn;
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
            Column(
              children: <Widget>[
                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only(left: 140.0),
                  child: new Text(
                    'هويه المستخدم  ',
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
                    controller: _nameController,
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
                  margin: EdgeInsets.only(left: 140.0),
                  child: new Text(
                    'التسجيل باستخدام ',
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
                    controller: _passwordController,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _password = val,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "رمز المرور ",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                  Container(

                    width:MediaQuery.of(context).size.width*0.2,
                    height:MediaQuery.of(context).size.height*0.2,

                    margin: EdgeInsets.only( right: 10.0),
                    padding:EdgeInsets.only(right: 10.0 ) ,

                    //child: new Image.asset('homeimage/finger.png'),
                    child:InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Myfinger()));               },
                      child: Image.asset("homeimage/finger.png",width: 80,height: 80,)
                      ,
                    ),






                  ),



                  new Text(
                    ' اضافه بصمه الاصبع    ',
                    style: TextStyle(color: Colors.teal.shade600, fontSize: 20, ),
                    textAlign: TextAlign.right,

                  ),

                ],),

                loginBtn = new RaisedButton(
                  onPressed: _submit,
                  child: Text(
                    "دخول ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.black)),
                  color: Colors.teal.shade400,
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
