import 'package:flutter/cupertino.dart';
import 'package:saker11/database/reset-data.dart';
import 'package:saker11/models/note.dart';

abstract class SearchCallBack{
  void onSearchSuccess(Note note);
}

class LoginPagePresenter {
  SearchCallBack _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doSearch(String title, String date, String location){
    api
    .search(title, date,location)
    .then((note) => _view.onSearchSuccess(note));
  }
}