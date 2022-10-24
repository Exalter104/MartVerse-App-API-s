class Login {
  String? oldPassword;
  String? newPassword;

  Login({this.oldPassword, this.newPassword});

  Login.fromJson(Map<String, dynamic> json) {
    oldPassword = json["old_password"];
    newPassword = json["new_password"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["old_password"] = oldPassword;
    _data["new_password"] = newPassword;
    return _data;
  }
}
