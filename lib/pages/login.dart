import 'package:flutter/material.dart';
import 'package:saker11/pages/test.dart';

import 'currentuser.dart';
import 'newuser.dart';

class LoginScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<LoginScreen> {
  bool isButtonPressed = false;
  bool isButtonPressed2 = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: Text(
          "تسجيل الدخول ",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: new Container(
        // margin: const EdgeInsets.only(left: 50.0, top: 25, right: 50),
        child: Column(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Testuser()));
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
          ],
        ),
      ),
    );
  }
}
