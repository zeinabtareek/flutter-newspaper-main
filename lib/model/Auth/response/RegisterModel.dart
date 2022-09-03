import 'dart:convert';
/// display_name : "userName"
/// user_email : "email"
/// user_pass : "password"
/// confirm_password : "confirmpassword"

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));
String registerModelToJson(RegisterModel data) => json.encode(data.toJson());
class RegisterModel {
  RegisterModel({
      String displayName,
      String userEmail,
      String userPass,
      String confirmPassword,}){
    _displayName = displayName;
    _userEmail = userEmail;
    _userPass = userPass;
    _confirmPassword = confirmPassword;
}

  RegisterModel.fromJson(dynamic json) {
    _displayName = json['display_name'];
    _userEmail = json['user_email'];
    _userPass = json['user_pass'];
    _confirmPassword = json['confirm_password'];
  }
  String _displayName;
  String _userEmail;
  String _userPass;
  String _confirmPassword;
RegisterModel copyWith({  String displayName,
  String userEmail,
  String userPass,
  String confirmPassword,
}) => RegisterModel(  displayName: displayName ?? _displayName,
  userEmail: userEmail ?? _userEmail,
  userPass: userPass ?? _userPass,
  confirmPassword: confirmPassword ?? _confirmPassword,
);
  String get displayName => _displayName;
  String get userEmail => _userEmail;
  String get userPass => _userPass;
  String get confirmPassword => _confirmPassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['display_name'] = _displayName;
    map['user_email'] = _userEmail;
    map['user_pass'] = _userPass;
    map['confirm_password'] = _confirmPassword;
    return map;
  }

}