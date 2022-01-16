import 'package:flutter/material.dart';
import 'package:platform_alert_dialog/platform_alert_dialog.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/home.dart';
import 'package:saker11/pages/location.dart';

class Testuser extends StatefulWidget {
  @override
  _testScreenState createState() => _testScreenState();
}



class _testScreenState extends State<Testuser>  {

  TextEditingController _emailController=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();



  void _submit() {
    String name = _emailController.text.toString();
    String pass = _passwordController.text.toString();

    if(name=="ahmed" && pass =="11"){
      Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen()));
    }else{
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {

          Future.delayed(Duration(seconds: 30));

          return PlatformAlertDialog(
            title: Text('sorry'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('enter the correct name and password'),
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
                child: Text('accept'),
                actionType: ActionType.Preferred,
                onPressed: () {
                  Navigator.of(context).pop();
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
                },
              ),
            ],
          );
        },
      );

    }


  }


  bool isButtonPressed = false;
  bool isButtonPressed2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal.shade600,

        title: Text(
          "تسجيل الدخول ",
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ) ,

      body: new Container(
        child:ListView(
          children: <Widget>[
            Container(
              width:MediaQuery.of(context).size.width*1.13,

              child:  Row(
                children: <Widget>[
                  RaisedButton(

                    child: Text(" مستخدم جديد "
                      ,
                      style: TextStyle(      color: isButtonPressed ? Colors.teal.shade600 : Colors.white,
                          fontSize: 25.5),



                    ),
                    color: isButtonPressed ? Colors.white : Colors.teal.shade600,
                    onPressed: () {
                      setState(() {
                        isButtonPressed =!isButtonPressed;
                        isButtonPressed2 =!isButtonPressed2;
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Testuser()));


                      }

                      );
                    },
                  ),

                  RaisedButton(

                    child: Text(" مستخدم حالي "
                      ,
                      style: TextStyle(      color: isButtonPressed2 ? Colors.teal.shade600 : Colors.white,
                          fontSize: 25.5),



                    ),
                    color: isButtonPressed2 ? Colors.white : Colors.teal.shade600,
                    onPressed: () {
                      setState(() {
                        isButtonPressed2 =!isButtonPressed2;
                        isButtonPressed =!isButtonPressed;
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Currentuser()));


                      });
                    },
                  ),







                ],
              )

              ,
            ),

            Column(


              children: <Widget>[

                Container(
                  alignment: new Alignment(0.0, 1.0),
                  margin: EdgeInsets.only( left: 140.0),


                  child: new Text(
                    'هويه المستخدم  ',
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

                    controller: _emailController,


                    style: TextStyle(
                      color: Colors.black,
                    ),

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'الرقم او البريد الالكتروني',

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
                    'التسجيل باستخدام ',
                    style: TextStyle(color: Colors.teal.shade600, fontSize: 30, ),
                    textAlign: TextAlign.right,

                  ),

                ),


                Container(
//            margin: EdgeInsets.only( left: 200.0),
                  margin: EdgeInsets.only( right: 10.0),
                  padding:EdgeInsets.only(right: 10.0 ) ,


                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.right,
                    controller: _passwordController,

                    style: TextStyle(
                      color: Colors.black,
                    ),

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "رمز المرور ",

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

                SizedBox(
                  height: 30,
                ),




                 RaisedButton(
                  onPressed: _submit,



                  child: Text("دخول " ,
                    style: TextStyle(color: Colors.white, fontSize: 15.0, ),

                  ),

                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black26)
                  ),
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
