import 'package:wan_flutter/generated/json/base/json_field.dart';
import 'package:wan_flutter/generated/json/banner_info_entity.g.dart';
import 'dart:convert';
export 'package:wan_flutter/generated/json/banner_info_entity.g.dart';

@JsonSerializable()
class BannerInfoEntity {
  late List<BannerInfoData> data;
  late int errorCode;
  late String errorMsg;

  BannerInfoEntity();

  factory BannerInfoEntity.fromJson(Map<String, dynamic> json) =>
      $BannerInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $BannerInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BannerInfoData {
  late String desc;
  late int id;
  late String imagePath;
  late int isVisible;
  late int order;
  late String title;
  late int type;
  late String url;

  BannerInfoData();

  factory BannerInfoData.fromJson(Map<String, dynamic> json) =>
      $BannerInfoDataFromJson(json);

  Map<String, dynamic> toJson() => $BannerInfoDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
