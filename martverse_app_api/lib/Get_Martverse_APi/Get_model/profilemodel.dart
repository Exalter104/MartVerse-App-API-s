class ProfileInformations {
  User? user;
  Warehouse? warehouse;

  ProfileInformations({this.user, this.warehouse});

  ProfileInformations.fromJson(Map<String, dynamic> json) {
    user = json["user"] == null ? null : User.fromJson(json["user"]);
    warehouse = json["warehouse"] == null
        ? null
        : Warehouse.fromJson(json["warehouse"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    if (warehouse != null) {
      _data["warehouse"] = warehouse?.toJson();
    }
    return _data;
  }
}

class Warehouse {
  String? id;
  Location? location;

  Warehouse({this.id, this.location});

  Warehouse.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    return _data;
  }
}

class Location {
  double? lat;
  double? long;

  Location({this.lat, this.long});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json["lat"];
    long = json["long"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["long"] = long;
    return _data;
  }
}

class User {
  String? username;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? nic;
  String? createdAt;

  User(
      {this.username,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.nic,
      this.createdAt});

  User.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    phoneNumber = json["phone_number"];
    email = json["email"];
    nic = json["nic"];
    createdAt = json["created_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["phone_number"] = phoneNumber;
    _data["email"] = email;
    _data["nic"] = nic;
    _data["created_at"] = createdAt;
    return _data;
  }
}
