import 'dart:io';
import 'package:flutter/material.dart';
import 'package:saker11/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:saker11/pages/home.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:saker11/models/user.dart';
import 'package:saker11/pages/currentuser.dart';
import 'package:saker11/pages/home.dart';
import 'package:saker11/pages/login_presenter.dart';
import 'package:saker11/pages/newuser.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  final String tableUser = "User";
  final String columnName = "name";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnjop = "jop ";
  final String columnsex = "sex";
  final String columndescription = "description";

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT,jop TEXT,sex TEXT,description TEXT, flaglogged TEXT)");
    print("Table is created");
  }

  //insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

//  Future<User> selectUser(String username, String password) async {
//    print("Select User");
////    print(user.username);
////    print(user.password);
////    print(user.jop);
////    print(user.sex);
////    print(user.description);
//    var dbClient = await db;
//    List<Map> maps = await dbClient.query(tableUser,
//        columns: [columnUserName, columnPassword],
//        where: "$columnUserName = ? and $columnPassword = ? ",
////        whereArgs: [user.username, user.password]
//    );
//    print(maps);
//
//    if (maps.length > 0) {
//      print("User Exist !!!");
//      return user;
//    } else {
//      print("User not Exist !!!");
//      return null;
//    }
//  }

  Future<User> loginUser(String username, String password) async {
    var dbClient = await db;
    String sql =
        "SELECT * FROM User WHERE username = '$username' AND password = '$password'";
    var result = await dbClient.rawQuery(sql);
    if (result.length> 0) {
      print("User Exist !!!");
      return User.map(result.first);
    } else {

      print("User not Exist !!!");
      return null;
    }
  }
  Future<List<User>> getAllUser() async {
    var dbClient = await db;
    var res = await dbClient.query("user");

    List<User> list =
    res.isNotEmpty ? res.map((c) => User.map(c)).toList() : null;
    return list;
  }
}
