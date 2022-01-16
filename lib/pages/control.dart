//import 'package:flutter/material.dart';
//import 'package:responsive/flex_widget.dart';
//import 'package:responsive/responsive_row.dart';
//import 'package:responsive/responsive_row.dart';
//import 'package:responsive/responsive.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:pie_chart/pie_chart.dart';
//
//
//
//class Control extends StatefulWidget {
//  @override
//  _controlState createState() => new _controlState();
//}
//
//class _controlState extends State<Control> {
//  bool toggle = false;
//  Map<String, double> dataMap = Map();
//  List<Color> colorList = [
//    Colors.teal[200],
//    Colors.teal[400],
//    Colors.teal[500],
//  ];
//
//  @override
//  void initState() {
//    super.initState();
//    dataMap.putIfAbsent("بصمة الإصبع", () => 3);
//    dataMap.putIfAbsent("رمز المرور", () => 6);
//    dataMap.putIfAbsent("بصمة الوجهة", () => 2);
//  }
//
//  void togglePieChart() {
//    setState(() {
//      toggle = !toggle;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: new AppBar(
//          title: new Text('لوحة التحكم',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                fontSize: 27.0,
//              )),
//          centerTitle: true,
//          toolbarOpacity: 0.7,
//
//          backgroundColor: Colors.teal),
//      drawer: new Drawer(
//        child: new Container(),
//      ),
//      backgroundColor: Colors.white,
//      body: new ListView(
//        children: <Widget>[
//          new Column(
//            children: <Widget>[
//              new Container(
//                alignment: (Alignment.topRight),
//                padding: EdgeInsets.all(12.0),
//                child: Text('الكتب',
//                    textAlign: TextAlign.right,
//                    textDirection: TextDirection.rtl,
//                    style: TextStyle(
//                        fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
//              ),
//              new Row(
//                mainAxisSize: MainAxisSize.min,
//                textDirection: TextDirection.rtl,
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                    child: new FlatButton(
//                      onPressed: () {},
//                      color: Colors.teal.withOpacity(0.9),
//                      child: new Text(
//                        'اضافة',
//                        textDirection: TextDirection.rtl,
//                        style: TextStyle(
//                            fontSize: 26.0,
//                            color: Colors.white.withOpacity(.9)),
//                      ),
//                      shape: RoundedRectangleBorder(
//                          borderRadius:
//                          BorderRadius.all(Radius.circular(16.0))),
//                    ),
//                  ),
//
////                  Container(
////                    padding: EdgeInsets.only(right: 7.0, left: 7.0),
////                    child: new FlatButton(
////                      onPressed: () {},
////                      color: Colors.teal.withOpacity(0.9),
////                      child: new Text(
////                        'تعديل',
////                        textDirection: TextDirection.rtl,
////                        style: TextStyle(
////                            fontSize: 26.0,
////                            color: Colors.white.withOpacity(.9)),
////                      ),
////                      shape: RoundedRectangleBorder(
////                          borderRadius:
////                          BorderRadius.all(Radius.circular(16.0))),
////                    ),
////                  ),
////                  Container(
////                    padding: EdgeInsets.only(right: 5.0),
////                    child: new FlatButton(
////                      onPressed: () {},
////                      color: Colors.teal.withOpacity(0.9),
////                      child: new Text(
////                        'حذف',
////                        textDirection: TextDirection.rtl,
////                        style: TextStyle(
////                            fontSize: 26.0,
////                            color: Colors.white.withOpacity(.9)),
////                      ),
////                      shape: RoundedRectangleBorder(
////                          borderRadius:
////                          BorderRadius.all(Radius.circular(16.0))),
////                    ),
////                  ),
//                ],
//              ),
//              new Container(
//                alignment: (Alignment.topRight),
//                padding: EdgeInsets.only(right: 10.0,bottom: 5.0,top:5.0),
//                child: Text('الأعضاء',
//                    textAlign: TextAlign.right,
//                    textDirection: TextDirection.rtl,
//                    style: TextStyle(
//                        fontSize: 27.0, color: Colors.teal.withOpacity(0.9))),
//              ),
//              new Row(
//                textDirection: TextDirection.rtl,
//                mainAxisSize: MainAxisSize.min,
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                    child: new FlatButton(
//                      onPressed: () {},
//                      color: Colors.teal.withOpacity(0.9),
//                      child: Text(
//                        'تسجيل',
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 25.0,
//                        ),
//                      ),
//                      shape: RoundedRectangleBorder(
//                          borderRadius:
//                          BorderRadius.all(Radius.circular(16.0))),
//                    ),
//                  ),
////                  Container(
////                    padding: EdgeInsets.only(left: 7.0, right: 7.0),
////                    child: new FlatButton(
////                      color: Colors.teal.withOpacity(0.9),
////                      onPressed: () {},
////                      child: new Text(
////                        'تعديل',
////                        textDirection: TextDirection.rtl,
////                        style: TextStyle(
////                            fontSize: 26.0,
////                            color: Colors.white.withOpacity(.9)),
////                      ),
////                      shape: RoundedRectangleBorder(
////                          borderRadius:
////                          BorderRadius.all(Radius.circular(16.0))),
////                    ),
////                  ),
////                  Container(
////                    padding: EdgeInsets.only(right: 5.0),
////                    child: FlatButton(
////                      color: Colors.teal.withOpacity(0.9),
////                      onPressed: () {},
////                      child: new Text(
////                        'حظر',
////                        textDirection: TextDirection.rtl,
////                        style: TextStyle(
////                            fontSize: 26.0,
////                            color: Colors.white.withOpacity(.9)),
////                      ),
////                      shape: RoundedRectangleBorder(
////                          borderRadius:
////                          BorderRadius.all(Radius.circular(16.0))),
////                    ),
////                  ),
//                ],
//              ),
//              Container(
//                color: Colors.teal.withOpacity(.7),
//                margin: EdgeInsets.only(top: 25.0),
//                padding: EdgeInsets.only(left: 135.0),
//                width:double.infinity ,
////                padding: EdgeInsets.only(top: 5.0),
//                child: Row(
//                  mainAxisSize: MainAxisSize.min,
//                  children: <Widget>[
//                    Text('احصائيات',
//                        textAlign: TextAlign.center,
//                        textDirection: TextDirection.rtl,
//                        style: TextStyle(
//                            fontSize: 27.0,
//                            color: Colors.white.withOpacity(0.9))),
//                  ],
//                ),
//              ),
//
//              new Container(
//                alignment: (Alignment.centerRight),
//                padding: EdgeInsets.all(10.0),
//                child: Text('طرق التسجيل',
//                    textAlign: TextAlign.right,
//                    textDirection: TextDirection.rtl,
//                    style: TextStyle(
//                        fontSize: 23.0, color: Colors.teal.withOpacity(0.9))),
//              ),
//              Container(
//                child: Center(
//                  child: toggle
//                      ? PieChart(
//                    dataMap: dataMap,
//                    animationDuration: Duration(milliseconds: 800),
//                    chartLegendSpacing: 32.0,
//                    chartRadius: MediaQuery.of(context).size.width / 2.7,
//                    showChartValuesInPercentage: true,
//                    showChartValues: true,
//                    showChartValuesOutside: false,
//                    chartValueBackgroundColor: Colors.grey[200],
//                    colorList: colorList,
//                    showLegends: true,
//                    legendPosition: LegendPosition.right,
//                    decimalPlaces: 1,
//                    showChartValueLabel: true,
//                    initialAngle: 0,
//                    chartValueStyle: defaultChartValueStyle.copyWith(
//                      color: Colors.blueGrey[900].withOpacity(0.9),
//                    ),
//                    chartType: ChartType.disc,
//                  )
//                      : Text("اضغط هنا",style: TextStyle(color: Colors.teal.withOpacity(.8),fontSize: 20.0),),
//                ),
//              ),
//              FloatingActionButton(
//                onPressed:  togglePieChart,
//                child: Icon(Icons.insert_chart),),
//
//
////               Image.asset('images/Icon awesome-chart-pie.png'),
//              new Container(
//                alignment: (Alignment.centerRight),
//                padding: EdgeInsets.only(right:10.0,top: 7.0),
//                child: Text('الأقسام',
//                    textAlign: TextAlign.right,
//                    textDirection: TextDirection.rtl,
//                    style: TextStyle(
//                        fontSize: 23.0, color: Colors.teal.withOpacity(0.9))),
//              ),
//              Image.asset('homeimage/Iconawesome-chart-bar.png'),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}
