class PostModel {
  String? username;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? nic;
  String? createdAt;

  PostModel(
      {this.username,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.nic,
      this.createdAt});

  PostModel.fromJson(Map<String, dynamic> json) {
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
