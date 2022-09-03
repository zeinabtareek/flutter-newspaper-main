import 'dart:convert';
/// success : true
/// data : {"ID":2805,"post_author":1,"post_date":"2013-09-13 15:04:47","post_date_gmt":"2013-09-13 15:04:47","post_content":"","post_title":"69","post_excerpt":"","post_status":"inherit","comment_status":"open","ping_status":"open","post_password":"","post_name":"69","to_ping":"","pinged":"","post_modified":"2013-09-13 15:04:47","post_modified_gmt":"2013-09-13 15:04:47","post_content_filtered":"","post_parent":2803,"guid":"http://kabrday.com/wp-content/uploads/2013/09/69.jpg","menu_order":0,"post_type":"attachment","post_mime_type":"image/jpeg","comment_count":0,"categoires":[],"categories":[]}
/// message : ""

SinglePostModel singlePostModelFromJson(String str) => SinglePostModel.fromJson(json.decode(str));
String singlePostModelToJson(SinglePostModel data) => json.encode(data.toJson());
class SinglePostModel {
  SinglePostModel({
      bool? success, 
      Data? data, 
      String? message,}){
    _success = success;
    _data = data;
    _message = message;
}

  SinglePostModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  bool? _success;
  Data? _data;
  String? _message;
SinglePostModel copyWith({  bool? success,
  Data? data,
  String? message,
}) => SinglePostModel(  success: success ?? _success,
  data: data ?? _data,
  message: message ?? _message,
);
  bool? get success => _success;
  Data? get data => _data;
  String? get message => _message;

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

/// ID : 2805
/// post_author : 1
/// post_date : "2013-09-13 15:04:47"
/// post_date_gmt : "2013-09-13 15:04:47"
/// post_content : ""
/// post_title : "69"
/// post_excerpt : ""
/// post_status : "inherit"
/// comment_status : "open"
/// ping_status : "open"
/// post_password : ""
/// post_name : "69"
/// to_ping : ""
/// pinged : ""
/// post_modified : "2013-09-13 15:04:47"
/// post_modified_gmt : "2013-09-13 15:04:47"
/// post_content_filtered : ""
/// post_parent : 2803
/// guid : "http://kabrday.com/wp-content/uploads/2013/09/69.jpg"
/// menu_order : 0
/// post_type : "attachment"
/// post_mime_type : "image/jpeg"
/// comment_count : 0
/// categoires : []
/// categories : []

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? id, 
      int? postAuthor, 
      String? postDate, 
      String? postDateGmt, 
      String? postContent, 
      String? postTitle, 
      String? postExcerpt, 
      String? postStatus, 
      String? commentStatus, 
      String? pingStatus, 
      String? postPassword, 
      String? postName, 
      String? toPing, 
      String? pinged, 
      String? postModified, 
      String? postModifiedGmt, 
      String? postContentFiltered, 
      int? postParent, 
      String? guid, 
      int? menuOrder, 
      String? postType, 
      String? postMimeType, 
      int? commentCount, 
      List<dynamic>? categoires, 
      List<dynamic>? categories,}){
    _id = id;
    _postAuthor = postAuthor;
    _postDate = postDate;
    _postDateGmt = postDateGmt;
    _postContent = postContent;
    _postTitle = postTitle;
    _postExcerpt = postExcerpt;
    _postStatus = postStatus;
    _commentStatus = commentStatus;
    _pingStatus = pingStatus;
    _postPassword = postPassword;
    _postName = postName;
    _toPing = toPing;
    _pinged = pinged;
    _postModified = postModified;
    _postModifiedGmt = postModifiedGmt;
    _postContentFiltered = postContentFiltered;
    _postParent = postParent;
    _guid = guid;
    _menuOrder = menuOrder;
    _postType = postType;
    _postMimeType = postMimeType;
    _commentCount = commentCount;
    _categoires = categoires;
    _categories = categories;
}

  Data.fromJson(dynamic json) {
    _id = json['ID'];
    _postAuthor = json['post_author'];
    _postDate = json['post_date'];
    _postDateGmt = json['post_date_gmt'];
    _postContent = json['post_content'];
    _postTitle = json['post_title'];
    _postExcerpt = json['post_excerpt'];
    _postStatus = json['post_status'];
    _commentStatus = json['comment_status'];
    _pingStatus = json['ping_status'];
    _postPassword = json['post_password'];
    _postName = json['post_name'];
    _toPing = json['to_ping'];
    _pinged = json['pinged'];
    _postModified = json['post_modified'];
    _postModifiedGmt = json['post_modified_gmt'];
    _postContentFiltered = json['post_content_filtered'];
    _postParent = json['post_parent'];
    _guid = json['guid'];
    _menuOrder = json['menu_order'];
    _postType = json['post_type'];
    _postMimeType = json['post_mime_type'];
    _commentCount = json['comment_count'];
    if (json['categoires'] != null) {
      _categoires = [];
      json['categoires'].forEach((v) {
        _categoires?.add(Dynamic.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Dynamic.fromJson(v));
      });
    }
  }
  int? _id;
  int? _postAuthor;
  String? _postDate;
  String? _postDateGmt;
  String? _postContent;
  String? _postTitle;
  String? _postExcerpt;
  String? _postStatus;
  String? _commentStatus;
  String? _pingStatus;
  String? _postPassword;
  String? _postName;
  String? _toPing;
  String? _pinged;
  String? _postModified;
  String? _postModifiedGmt;
  String? _postContentFiltered;
  int? _postParent;
  String? _guid;
  int? _menuOrder;
  String? _postType;
  String? _postMimeType;
  int? _commentCount;
  List<dynamic>? _categoires;
  List<dynamic>? _categories;
Data copyWith({  int? id,
  int? postAuthor,
  String? postDate,
  String? postDateGmt,
  String? postContent,
  String? postTitle,
  String? postExcerpt,
  String? postStatus,
  String? commentStatus,
  String? pingStatus,
  String? postPassword,
  String? postName,
  String? toPing,
  String? pinged,
  String? postModified,
  String? postModifiedGmt,
  String? postContentFiltered,
  int? postParent,
  String? guid,
  int? menuOrder,
  String? postType,
  String? postMimeType,
  int? commentCount,
  List<dynamic>? categoires,
  List<dynamic>? categories,
}) => Data(  id: id ?? _id,
  postAuthor: postAuthor ?? _postAuthor,
  postDate: postDate ?? _postDate,
  postDateGmt: postDateGmt ?? _postDateGmt,
  postContent: postContent ?? _postContent,
  postTitle: postTitle ?? _postTitle,
  postExcerpt: postExcerpt ?? _postExcerpt,
  postStatus: postStatus ?? _postStatus,
  commentStatus: commentStatus ?? _commentStatus,
  pingStatus: pingStatus ?? _pingStatus,
  postPassword: postPassword ?? _postPassword,
  postName: postName ?? _postName,
  toPing: toPing ?? _toPing,
  pinged: pinged ?? _pinged,
  postModified: postModified ?? _postModified,
  postModifiedGmt: postModifiedGmt ?? _postModifiedGmt,
  postContentFiltered: postContentFiltered ?? _postContentFiltered,
  postParent: postParent ?? _postParent,
  guid: guid ?? _guid,
  menuOrder: menuOrder ?? _menuOrder,
  postType: postType ?? _postType,
  postMimeType: postMimeType ?? _postMimeType,
  commentCount: commentCount ?? _commentCount,
  categoires: categoires ?? _categoires,
  categories: categories ?? _categories,
);
  int? get id => _id;
  int? get postAuthor => _postAuthor;
  String? get postDate => _postDate;
  String? get postDateGmt => _postDateGmt;
  String? get postContent => _postContent;
  String? get postTitle => _postTitle;
  String? get postExcerpt => _postExcerpt;
  String? get postStatus => _postStatus;
  String? get commentStatus => _commentStatus;
  String? get pingStatus => _pingStatus;
  String? get postPassword => _postPassword;
  String? get postName => _postName;
  String? get toPing => _toPing;
  String? get pinged => _pinged;
  String? get postModified => _postModified;
  String? get postModifiedGmt => _postModifiedGmt;
  String? get postContentFiltered => _postContentFiltered;
  int? get postParent => _postParent;
  String? get guid => _guid;
  int? get menuOrder => _menuOrder;
  String? get postType => _postType;
  String? get postMimeType => _postMimeType;
  int? get commentCount => _commentCount;
  List<dynamic>? get categoires => _categoires;
  List<dynamic>? get categories => _categories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['post_author'] = _postAuthor;
    map['post_date'] = _postDate;
    map['post_date_gmt'] = _postDateGmt;
    map['post_content'] = _postContent;
    map['post_title'] = _postTitle;
    map['post_excerpt'] = _postExcerpt;
    map['post_status'] = _postStatus;
    map['comment_status'] = _commentStatus;
    map['ping_status'] = _pingStatus;
    map['post_password'] = _postPassword;
    map['post_name'] = _postName;
    map['to_ping'] = _toPing;
    map['pinged'] = _pinged;
    map['post_modified'] = _postModified;
    map['post_modified_gmt'] = _postModifiedGmt;
    map['post_content_filtered'] = _postContentFiltered;
    map['post_parent'] = _postParent;
    map['guid'] = _guid;
    map['menu_order'] = _menuOrder;
    map['post_type'] = _postType;
    map['post_mime_type'] = _postMimeType;
    map['comment_count'] = _commentCount;
    if (_categoires != null) {
      map['categoires'] = _categoires?.map((v) => v.toJson()).toList();
    }
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}