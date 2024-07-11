import 'package:wan_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_flutter/bean/banner_info_entity.dart';

BannerInfoEntity $BannerInfoEntityFromJson(Map<String, dynamic> json) {
  final BannerInfoEntity bannerInfoEntity = BannerInfoEntity();
  final List<BannerInfoData>? data = (json['data'] as List<dynamic>?)
      ?.map((e) => jsonConvert.convert<BannerInfoData>(e) as BannerInfoData)
      .toList();
  if (data != null) {
    bannerInfoEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    bannerInfoEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    bannerInfoEntity.errorMsg = errorMsg;
  }
  return bannerInfoEntity;
}

Map<String, dynamic> $BannerInfoEntityToJson(BannerInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data.map((v) => v.toJson()).toList();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

extension BannerInfoEntityExtension on BannerInfoEntity {
  BannerInfoEntity copyWith({
    List<BannerInfoData>? data,
    int? errorCode,
    String? errorMsg,
  }) {
    return BannerInfoEntity()
      ..data = data ?? this.data
      ..errorCode = errorCode ?? this.errorCode
      ..errorMsg = errorMsg ?? this.errorMsg;
  }
}

BannerInfoData $BannerInfoDataFromJson(Map<String, dynamic> json) {
  final BannerInfoData bannerInfoData = BannerInfoData();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    bannerInfoData.desc = desc;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    bannerInfoData.id = id;
  }
  final String? imagePath = jsonConvert.convert<String>(json['imagePath']);
  if (imagePath != null) {
    bannerInfoData.imagePath = imagePath;
  }
  final int? isVisible = jsonConvert.convert<int>(json['isVisible']);
  if (isVisible != null) {
    bannerInfoData.isVisible = isVisible;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    bannerInfoData.order = order;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    bannerInfoData.title = title;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    bannerInfoData.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    bannerInfoData.url = url;
  }
  return bannerInfoData;
}

Map<String, dynamic> $BannerInfoDataToJson(BannerInfoData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['id'] = entity.id;
  data['imagePath'] = entity.imagePath;
  data['isVisible'] = entity.isVisible;
  data['order'] = entity.order;
  data['title'] = entity.title;
  data['type'] = entity.type;
  data['url'] = entity.url;
  return data;
}

extension BannerInfoDataExtension on BannerInfoData {
  BannerInfoData copyWith({
    String? desc,
    int? id,
    String? imagePath,
    int? isVisible,
    int? order,
    String? title,
    int? type,
    String? url,
  }) {
    return BannerInfoData()
      ..desc = desc ?? this.desc
      ..id = id ?? this.id
      ..imagePath = imagePath ?? this.imagePath
      ..isVisible = isVisible ?? this.isVisible
      ..order = order ?? this.order
      ..title = title ?? this.title
      ..type = type ?? this.type
      ..url = url ?? this.url;
  }
}
