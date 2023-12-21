// To parse this JSON data, do
//
//     final logindata = logindataFromJson(jsonString);

class Logindata {
  bool? success;
  String? message;
  UserData? userdata;
  String? token;

  Logindata({
    this.success,
    this.message,
    this.userdata,
    this.token,
  });

  factory Logindata.fromJson(Map<String, dynamic> json) => Logindata(
        success: json["success"],
        message: json["message"],
        userdata: json["data"] == null ? null : UserData.fromJson(json["data"]),
        token: json["token"],
      );
}

class UserData {
  String? firstName;
  String? lastName;
  int? role;
  String? phone;
  int? id;
  bool? isLogin;

  UserData({
    this.firstName,
    this.lastName,
    this.role,
    this.phone,
    this.id,
    this.isLogin,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        firstName: json["first_name"],
        lastName: json["last_name"],
        role: json["role"],
        phone: json["phone"],
        id: json["id"],
        isLogin: json["is_login"],
      );
}
