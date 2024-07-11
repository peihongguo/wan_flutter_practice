import 'package:wan_flutter/generated/json/base/json_field.dart';
import 'package:wan_flutter/generated/json/home_article_data_entity.g.dart';
import 'dart:convert';
export 'package:wan_flutter/generated/json/home_article_data_entity.g.dart';

@JsonSerializable()
class HomeArticleDataEntity {
  late HomeArticleDataData data;
  late int errorCode;
  late String errorMsg;

  HomeArticleDataEntity();

  factory HomeArticleDataEntity.fromJson(Map<String, dynamic> json) =>
      $HomeArticleDataEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomeArticleDataEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeArticleDataData {
  late int curPage;
  late List<HomeArticleDataDataDatas> datas;
  late int offset;
  late bool over;
  late int pageCount;
  late int size;
  late int total;

  HomeArticleDataData();

  factory HomeArticleDataData.fromJson(Map<String, dynamic> json) =>
      $HomeArticleDataDataFromJson(json);

  Map<String, dynamic> toJson() => $HomeArticleDataDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeArticleDataDataDatas {
  late bool adminAdd;
  late String apkLink;
  late int audit;
  late String author;
  late bool canEdit;
  late int chapterId;
  late String chapterName;
  late bool collect;
  late int courseId;
  late String desc;
  late String descMd;
  late String envelopePic;
  late bool fresh;
  late String host;
  late int id;
  late bool isAdminAdd;
  late String link;
  late String niceDate;
  late String niceShareDate;
  late String origin;
  late String prefix;
  late String projectLink;
  late int publishTime;
  late int realSuperChapterId;
  late int selfVisible;
  late int shareDate;
  late String shareUser;
  late int superChapterId;
  late String superChapterName;
  late List<HomeArticleDataDataDatasTags> tags;
  late String title;
  late int type;
  late int userId;
  late int visible;
  late int zan;

  HomeArticleDataDataDatas();

  factory HomeArticleDataDataDatas.fromJson(Map<String, dynamic> json) =>
      $HomeArticleDataDataDatasFromJson(json);

  Map<String, dynamic> toJson() => $HomeArticleDataDataDatasToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeArticleDataDataDatasTags {
  late String name;
  late String url;

  HomeArticleDataDataDatasTags();

  factory HomeArticleDataDataDatasTags.fromJson(Map<String, dynamic> json) =>
      $HomeArticleDataDataDatasTagsFromJson(json);

  Map<String, dynamic> toJson() => $HomeArticleDataDataDatasTagsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
