import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saker11/pages/about.dart';
import 'package:saker11/pages/helpcom.dart';
import 'package:saker11/pages/home.dart';
import 'package:saker11/pages/infographic.dart';
import 'package:saker11/pages/question.dart';
import 'package:saker11/pages/services.dart';
import 'package:saker11/pages/test.dart';
import 'package:saker11/pages/websites.dart';
import 'package:saker11/screens/note_list.dart';
import 'package:saker11/search/search.dart';

import 'location.dart';
import 'menu_item.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _drawerScreenState createState() => _drawerScreenState();
}

class _drawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: new DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "homeimage/book.png",
                      width: 80,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Image.asset(
                      "homeimage/fuclty.png",
                      width: 180,
                      height: 73,
                    ),
                  ],
                ),
              ),
              color: Colors.teal.shade600,
            ),
            new Container(
              color: Colors.teal.shade300,
              child: new Column(
                children: <Widget>[
                  MenuItem(
                    icon: Icons.home,
                    title: "الصفحه الريسيه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.open_in_browser,
                    title: "تسجيل الدخول",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Testuser()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.search,
                    title: "بحث",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => search()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.priority_high,
                    title: "عن المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Aboutscreen()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.live_help,
                    title: "الاسئله المتكرره",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Question()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.dehaze,
                    title: "الخدمات",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => services()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.location_on,
                    title: "مكان المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => location()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.local_library,
                    title: "المساعده والتعليق",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Helpscreen()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.widgets,
                    title: "انفوجرافيك المكتبه",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Infographic()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.web,
                    title: "مواقع تهمك",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => websites()));
                    },
                  ),
                  MenuItem(
                    icon: Icons.exit_to_app,
                    title: "تسجيل الخروج ",
                    onTap: () {},
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NoteList()));
                    },
                    child: Image.asset(
                      "homeimage/control.png",
                      width: 80,
                      height: 80,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
