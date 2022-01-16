import 'package:flutter/material.dart';
import 'package:saker11/pages/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class websites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _myweb();
  }
}

class _myweb extends State<websites> {
  var DrawerScreen1= new DrawerScreen();

  Future<void> _launched;
  String phone = '';

  Future<void> _bank(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }


  Future<void> _alx(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }


  Future<void> _ethad(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }


  Future<void> _egyliy(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }


  Future<void> _globalliy(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }



  Future<void> _search(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }



  Future<void> _googlesearch(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }



  Future<void> _bookto(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }



  Future<void> _orgbook(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }


  Future<void> _hend(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
          title: new Text('مواقع تهمك',
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
                size: 30.0,
                textDirection: TextDirection.ltr,
              )),
            ),
          ],
          backgroundColor: Colors.teal),

      drawer: new Drawer(
        child: DrawerScreen1,
      ),
      backgroundColor: Colors.white,
      body: new Stack(


        children: <Widget>[

          new Container(


//            margin: EdgeInsets.only(bottom: 600.0, top: 10.0),
            padding: new EdgeInsets.only(top: 25.0),
            child: ListView(
              children: ListTile.divideTiles(
                color: Colors.teal.withOpacity(0.9),
                context: context,
                tiles: [
                  ListTile(

                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text(' بنك المعرفة المصرى',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _bank("https://www.ekb.eg/ar/home");
                    },
                  ),

                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text(' مكتبة الاسكندرية',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),

                    onTap: (){
                      _alx("https://www.bibalex.org/ar/");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('اتحاد المكتبات العالمية',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _ethad("srv3.eulc.edu.eg/eulc_v5/libraries/start.aspx");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('المكتبة المصرية',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _egyliy("http://mpl.org.eg/ar/pages/eservices.html");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('المكتبة العالمية',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _globalliy("https://www.wdl.org/ar/");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('بوابة البحث',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _search("https://www.researchgate.net/login");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('الباحث العلمى من جوجل',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _googlesearch("https://scholar.google.com.eg/schhp?hl=ar");
                    },
                  ),

                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('اليك كتابى',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _bookto("https://books-library.online/d-2648-download");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('عصير الكتب',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _orgbook("https://www.booksjuice.com/");
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.public,
                        size: 37.0, color: Colors.teal.withOpacity(0.8)),
                    title: Text('مؤسسة هنداوي للتعليم والثقافة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontSize: 24.0,
                        )),
                    onTap: (){
                      _hend("https://www.hindawi.org/");
                    },
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
