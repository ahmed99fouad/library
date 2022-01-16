class User {
  String _name;
  String _username;
  String _password;
  String _jop;
  String _sex;
  String _description;
  String _flaglogged;



  User(this._name, this._username, this._password,this._jop,this._sex,this._description, this._flaglogged);

  User.map(dynamic obj) {
    this._name = obj['name'];
    this._username = obj['username'];
    this._password = obj['password'];
    this._jop = obj['jop'];
    this._sex = obj['sex'];
    this._description = obj['description'];
    this._flaglogged = obj['password'];
  }

  String get name => _name;
  String get username => _username;
  String get password => _password;
  String get jop => _jop;
  String get sex => _sex;
  String get description => _description;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["username"] = _username;
    map["password"] = _password;
    map["jop"] = _jop;
    map["sex"] = _sex;
    map["description"] = _description;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
