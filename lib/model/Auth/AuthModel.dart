import 'dart:convert';
/// success : true
/// data : {"token":"20|fWGhtLyWGwbSEd8cmPycUcVYKOvIbuaaSz31K0fS"}
/// message : "User signed in"

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
String authModelToJson(AuthModel data) => json.encode(data.toJson());
class AuthModel {
  AuthModel({
      bool success,
      Data data,
      String message,}){
    _success = success;
    _data = data;
    _message = message;
}

  AuthModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  bool _success;
  Data _data;
  String _message;
AuthModel copyWith({  bool success,
  Data data,
  String message,
}) => AuthModel(  success: success ?? _success,
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

/// token : "20|fWGhtLyWGwbSEd8cmPycUcVYKOvIbuaaSz31K0fS"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String token,}){
    _token = token;
}

  Data.fromJson(dynamic json) {
    _token = json['token'];
  }
  String _token;
Data copyWith({  String token,
}) => Data(  token: token ?? _token,
);
  String get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    return map;
  }

}