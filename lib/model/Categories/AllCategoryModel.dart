import 'dart:convert';
/// success : true
/// data : [{"term_id":1002,"name":"FooterMenu","slug":"footermenu","term_group":0},{"term_id":2,"name":"إقتصادية","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a5%d9%82%d8%aa%d8%b5%d8%a7%d8%af%d9%8a%d8%a9","term_group":0},{"term_id":3,"name":"المجتمع","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d8%ac%d8%aa%d9%85%d8%b9","term_group":0},{"term_id":4,"name":"المناطق","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%86%d8%a7%d8%b7%d9%82","term_group":0},{"term_id":5,"name":"التعليم","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d8%aa%d8%b9%d9%84%d9%8a%d9%85","term_group":0},{"term_id":6,"name":"ثقافة وفنون","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%ab%d9%82%d8%a7%d9%81%d9%8a%d8%a9","term_group":0},{"term_id":7,"name":"أخبار متنوعة","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d9%85%d8%aa%d9%86%d9%88%d8%b9%d8%a9","term_group":0},{"term_id":8,"name":"الرياضة","slug":"%d8%a7%d9%84%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d8%b1%d9%8a%d8%a7%d8%b6%d9%8a%d8%a9","term_group":0},{"term_id":9,"name":"تكنولوجيا","slug":"%d8%aa%d9%83%d9%86%d9%88%d9%84%d9%88%d8%ac%d9%8a%d8%a7","term_group":0},{"term_id":10,"name":"سياحة وسفر","slug":"%d8%b3%d9%8a%d8%a7%d8%ad%d8%a9-%d9%88%d8%b3%d9%81%d8%b1","term_group":0}]
/// message : ""

AllCategoryModel allCategoryModelFromJson(String str) => AllCategoryModel.fromJson(json.decode(str));
String allCategoryModelToJson(AllCategoryModel data) => json.encode(data.toJson());
class AllCategoryModel {
  AllCategoryModel({
      bool success,
      List<Data>  data,
      String  message,}){
    _success = success;
    _data = data;
    _message = message;
}

  AllCategoryModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _message = json['message'];
  }
  bool  _success;
  List<Data> _data;
  String  _message;
AllCategoryModel copyWith({  bool  success,
  List<Data>  data,
  String  message,
}) => AllCategoryModel(  success: success ?? _success,
  data: data ?? _data,
  message: message ?? _message,
);
  bool get success => _success;
  List<Data> get data => _data;
  String get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    return map;
  }

}

/// term_id : 1002
/// name : "FooterMenu"
/// slug : "footermenu"
/// term_group : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int termId,
      String name,
      String slug,
      int termGroup,}){
    _termId = termId;
    _name = name;
    _slug = slug;
    _termGroup = termGroup;
}

  Data.fromJson(dynamic json) {
    _termId = json['term_id'];
    _name = json['name'];
    _slug = json['slug'];
    _termGroup = json['term_group'];
  }
  int _termId;
  String _name;
  String _slug;
  int _termGroup;
Data copyWith({  int termId,
  String name,
  String slug,
  int termGroup,
}) => Data(  termId: termId ?? _termId,
  name: name ?? _name,
  slug: slug ?? _slug,
  termGroup: termGroup ?? _termGroup,
);
  int get termId => _termId;
  String get name => _name;
  String get slug => _slug;
  int get termGroup => _termGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = _termId;
    map['name'] = _name;
    map['slug'] = _slug;
    map['term_group'] = _termGroup;
    return map;
  }

}