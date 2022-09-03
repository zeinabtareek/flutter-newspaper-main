import 'dart:convert';
/// success : true
/// data : {"name":"User"}
/// message : "You have been successfully logged out."

LogOutModel logOutModelFromJson(String str) => LogOutModel.fromJson(json.decode(str));
String logOutModelToJson(LogOutModel data) => json.encode(data.toJson());
class LogOutModel {
  LogOutModel({
      bool success,
      Data data,
      String message,}){
    _success = success;
    _data = data;
    _message = message;
}

  LogOutModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  bool _success;
  Data _data;
  String _message;
LogOutModel copyWith({  bool success,
  Data data,
  String message,
}) => LogOutModel(  success: success ?? _success,
  data: data ?? _data,
  message: message ?? _message,
);
  bool get success => _success;
  Data get data => _data;
  String get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

/// name : "User"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String name,}){
    _name = name;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
  }
  String _name;
Data copyWith({  String name,
}) => Data(  name: name ?? _name,
);
  String get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }

}