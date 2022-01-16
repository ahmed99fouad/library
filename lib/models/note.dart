class Note {
  int _id;
  String _title;
  String _description;
  String _location;
  String _date;
  int _priority;
  String _age;
  String _phone;

  Note(this._title, this._date, this._priority, this._age, this._phone,
      this._location,
      [this._description]);

  Note.withId(
      this._id, this._title, this._date, this._age, this._phone, this._priority,
      [this._description]);

  int get id => _id;

  String get title => _title;

  String get description => _description;
  String get location => _location;

  int get priority => _priority;

  String get date => _date;
  String get age => _age;
  String get phone => _phone;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set location(String newLocation) {
    if (newLocation.length <= 255) {
      this._location = newLocation;
    }
  }

  set age(String newAge) {
    this._age = newAge;
  }

  set phone(String newPhone) {
    if (newPhone.length <= 11) {
      this._phone = newPhone;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['location'] = _location;
    map['priority'] = _priority;
    map['date'] = _date;
    map['age'] = _age;
    map['phone'] = _phone;

    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._location = map['location'];
    this._priority = map['priority'];
    this._date = map['date'];
    this._age = map['age'];
    this._phone = map['phone'];
  }
}
