import 'dart:async';
import 'package:saker11/models/note.dart';
import 'package:saker11/database/database_helper.dart';

class RestData {
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<Note> search( String title, String date, String location) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var note = new Note(title, date, null, null,null,location,null);
    var db = new DatabaseHelper();
    var userRetorno = new Note(null,null,null,null,null,null,null);
    userRetorno = await db.searchUser(title,location);
    print(userRetorno);
    return userRetorno;

//    if(userRetorno != null){
//      flagLogged = "logged";
//      return new Future.value(new User(null, username, password,null,null,null,flagLogged));
//    }else {
//      flagLogged = "not";
//      return new Future.value(new User(null, username, password,null,null,null,flagLogged));
//    }
  }
}
