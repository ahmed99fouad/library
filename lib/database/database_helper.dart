import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:saker11/models/note.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper; // Singleton DatabaseHelper
  static Database _database; // Singleton Database

  String noteTable = 'note_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  String colLocation = 'location';
  String colPriority = 'priority';
  String colDate = 'date';
  String colAge = 'age';
  String colPhone = 'phone';

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper
          ._createInstance(); // This is executed only once, singleton object
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'notes.db';

    // Open/create the database at a given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $noteTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, '
        '$colDescription TEXT, $colLocation TEXT, $colPriority INTEGER, $colDate TEXT, $colAge TEXT, $colPhone TEXT)');
  }

  // Fetch Operation: Get all note objects from database
  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await this.database;

//		var result = await db.rawQuery('SELECT * FROM $noteTable order by $colPriority ASC');
    var result = await db.query(noteTable, orderBy: '$colPriority ASC');
    return result.toList();
  }

  // Insert Operation: Insert a Note object to database
  Future<int> insertNote(Note note) async {
    Database db = await this.database;
    var result = await db.insert(noteTable, note.toMap());
    return result;
  }

  // Update Operation: Update a Note object and save it to database
  Future<int> updateNote(Note note) async {
    var db = await this.database;
    var result = await db.update(noteTable, note.toMap(),
        where: '$colId = ?', whereArgs: [note.id]);
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteNote(int id) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $noteTable WHERE $colId = $id');
    return result;
  }

  // Get number of Note objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $noteTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

//  Future<int> searchNote(String title) async {
//    var db = await this.database;
//    int result =
//    await db.rawDelete('SELECT * FROM $noteTable WHERE $colTitle = $title');
//    return result;
//  }

//
//  Future<List<Note>> getUser(String title) async {
//    Database db = await this.database;
//    List<Map> list = await db.rawQuery('SELECT * FROM $noteTable WHERE $colTitle = $title');
//    List<Note> employees = new List();
//    return list;
//  }




  Future<Note> selectAllQuoteIds(var title) async {
    Database db = await this.database;
    var result = await db.rawQuery('SELECT * FROM $noteTable WHERE $colTitle LIKE %$title%');
    if(result.length>0) {
      return Note.fromMapObject(result.first);
    }else {
      return null;

    }
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Note List' [ List<Note> ]
  Future<List<Note>> getNoteList() async {
    var noteMapList = await getNoteMapList(); // Get 'Map List' from database
    int count =
        noteMapList.length; // Count the number of map entries in db table
    List<Note> noteList = List<Note>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      noteList.add(Note.fromMapObject(noteMapList[i]));
    }

    return noteList;
  }


  Future<Note> searchUser(String title,String location) async {

    var dbClient = await this.database;
    String sql =
        "SELECT * FROM $noteTable WHERE $colTitle = '$title' AND $colLocation = '$location'";
    var result = await dbClient.rawQuery(sql);
    if (result.length> 0) {
      print("User Exist !!!");
      print(result.first);
      return Note.fromMapObject(result.first);
    } else {

      print("User not Exist !!!");
      return null;
    }
  }
  Future<List<Note>> getAllUser() async {
    var dbClient = await this.database;
    var res = await dbClient.query("user");

    List<Note> list =
    res.isNotEmpty ? res.map((c) => Note.fromMapObject(c)).toList() : null;
    return list;
  }

}
