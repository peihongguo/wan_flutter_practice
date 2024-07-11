import 'package:wan_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_flutter/bean/home_article_data_entity.dart';

HomeArticleDataEntity $HomeArticleDataEntityFromJson(
    Map<String, dynamic> json) {
  final HomeArticleDataEntity homeArticleDataEntity = HomeArticleDataEntity();
  final HomeArticleDataData? data =
      jsonConvert.convert<HomeArticleDataData>(json['data']);
  if (data != null) {
    homeArticleDataEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    homeArticleDataEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    homeArticleDataEntity.errorMsg = errorMsg;
  }
  return homeArticleDataEntity;
}

Map<String, dynamic> $HomeArticleDataEntityToJson(
    HomeArticleDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data.toJson();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

extension HomeArticleDataEntityExtension on HomeArticleDataEntity {
  HomeArticleDataEntity copyWith({
    HomeArticleDataData? data,
    int? errorCode,
    String? errorMsg,
  }) {
    return HomeArticleDataEntity()
      ..data = data ?? this.data
      ..errorCode = errorCode ?? this.errorCode
      ..errorMsg = errorMsg ?? this.errorMsg;
  }
}

HomeArticleDataData $HomeArticleDataDataFromJson(Map<String, dynamic> json) {
  final HomeArticleDataData homeArticleDataData = HomeArticleDataData();
  final int? curPage = jsonConvert.convert<int>(json['curPage']);
  if (curPage != null) {
    homeArticleDataData.curPage = curPage;
  }
  final List<HomeArticleDataDataDatas>? datas =
      (json['datas'] as List<dynamic>?)
          ?.map((e) => jsonConvert.convert<HomeArticleDataDataDatas>(e)
              as HomeArticleDataDataDatas)
          .toList();
  if (datas != null) {
    homeArticleDataData.datas = datas;
  }
  final int? offset = jsonConvert.convert<int>(json['offset']);
  if (offset != null) {
    homeArticleDataData.offset = offset;
  }
  final bool? over = jsonConvert.convert<bool>(json['over']);
  if (over != null) {
    homeArticleDataData.over = over;
  }
  final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
  if (pageCount != null) {
    homeArticleDataData.pageCount = pageCount;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    homeArticleDataData.size = size;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    homeArticleDataData.total = total;
  }
  return homeArticleDataData;
}

Map<String, dynamic> $HomeArticleDataDataToJson(HomeArticleDataData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['curPage'] = entity.curPage;
  data['datas'] = entity.datas.map((v) => v.toJson()).toList();
  data['offset'] = entity.offset;
  data['over'] = entity.over;
  data['pageCount'] = entity.pageCount;
  data['size'] = entity.size;
  data['total'] = entity.total;
  return data;
}

extension HomeArticleDataDataExtension on HomeArticleDataData {
  HomeArticleDataData copyWith({
    int? curPage,
    List<HomeArticleDataDataDatas>? datas,
    int? offset,
    bool? over,
    int? pageCount,
    int? size,
    int? total,
  }) {
    return HomeArticleDataData()
      ..curPage = curPage ?? this.curPage
      ..datas = datas ?? this.datas
      ..offset = offset ?? this.offset
      ..over = over ?? this.over
      ..pageCount = pageCount ?? this.pageCount
      ..size = size ?? this.size
      ..total = total ?? this.total;
  }
}

HomeArticleDataDataDatas $HomeArticleDataDataDatasFromJson(
    Map<String, dynamic> json) {
  final HomeArticleDataDataDatas homeArticleDataDataDatas =
      HomeArticleDataDataDatas();
  final bool? adminAdd = jsonConvert.convert<bool>(json['adminAdd']);
  if (adminAdd != null) {
    homeArticleDataDataDatas.adminAdd = adminAdd;
  }
  final String? apkLink = jsonConvert.convert<String>(json['apkLink']);
  if (apkLink != null) {
    homeArticleDataDataDatas.apkLink = apkLink;
  }
  final int? audit = jsonConvert.convert<int>(json['audit']);
  if (audit != null) {
    homeArticleDataDataDatas.audit = audit;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    homeArticleDataDataDatas.author = author;
  }
  final bool? canEdit = jsonConvert.convert<bool>(json['canEdit']);
  if (canEdit != null) {
    homeArticleDataDataDatas.canEdit = canEdit;
  }
  final int? chapterId = jsonConvert.convert<int>(json['chapterId']);
  if (chapterId != null) {
    homeArticleDataDataDatas.chapterId = chapterId;
  }
  final String? chapterName = jsonConvert.convert<String>(json['chapterName']);
  if (chapterName != null) {
    homeArticleDataDataDatas.chapterName = chapterName;
  }
  final bool? collect = jsonConvert.convert<bool>(json['collect']);
  if (collect != null) {
    homeArticleDataDataDatas.collect = collect;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    homeArticleDataDataDatas.courseId = courseId;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    homeArticleDataDataDatas.desc = desc;
  }
  final String? descMd = jsonConvert.convert<String>(json['descMd']);
  if (descMd != null) {
    homeArticleDataDataDatas.descMd = descMd;
  }
  final String? envelopePic = jsonConvert.convert<String>(json['envelopePic']);
  if (envelopePic != null) {
    homeArticleDataDataDatas.envelopePic = envelopePic;
  }
  final bool? fresh = jsonConvert.convert<bool>(json['fresh']);
  if (fresh != null) {
    homeArticleDataDataDatas.fresh = fresh;
  }
  final String? host = jsonConvert.convert<String>(json['host']);
  if (host != null) {
    homeArticleDataDataDatas.host = host;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homeArticleDataDataDatas.id = id;
  }
  final bool? isAdminAdd = jsonConvert.convert<bool>(json['isAdminAdd']);
  if (isAdminAdd != null) {
    homeArticleDataDataDatas.isAdminAdd = isAdminAdd;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    homeArticleDataDataDatas.link = link;
  }
  final String? niceDate = jsonConvert.convert<String>(json['niceDate']);
  if (niceDate != null) {
    homeArticleDataDataDatas.niceDate = niceDate;
  }
  final String? niceShareDate =
      jsonConvert.convert<String>(json['niceShareDate']);
  if (niceShareDate != null) {
    homeArticleDataDataDatas.niceShareDate = niceShareDate;
  }
  final String? origin = jsonConvert.convert<String>(json['origin']);
  if (origin != null) {
    homeArticleDataDataDatas.origin = origin;
  }
  final String? prefix = jsonConvert.convert<String>(json['prefix']);
  if (prefix != null) {
    homeArticleDataDataDatas.prefix = prefix;
  }
  final String? projectLink = jsonConvert.convert<String>(json['projectLink']);
  if (projectLink != null) {
    homeArticleDataDataDatas.projectLink = projectLink;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    homeArticleDataDataDatas.publishTime = publishTime;
  }
  final int? realSuperChapterId =
      jsonConvert.convert<int>(json['realSuperChapterId']);
  if (realSuperChapterId != null) {
    homeArticleDataDataDatas.realSuperChapterId = realSuperChapterId;
  }
  final int? selfVisible = jsonConvert.convert<int>(json['selfVisible']);
  if (selfVisible != null) {
    homeArticleDataDataDatas.selfVisible = selfVisible;
  }
  final int? shareDate = jsonConvert.convert<int>(json['shareDate']);
  if (shareDate != null) {
    homeArticleDataDataDatas.shareDate = shareDate;
  }
  final String? shareUser = jsonConvert.convert<String>(json['shareUser']);
  if (shareUser != null) {
    homeArticleDataDataDatas.shareUser = shareUser;
  }
  final int? superChapterId = jsonConvert.convert<int>(json['superChapterId']);
  if (superChapterId != null) {
    homeArticleDataDataDatas.superChapterId = superChapterId;
  }
  final String? superChapterName =
      jsonConvert.convert<String>(json['superChapterName']);
  if (superChapterName != null) {
    homeArticleDataDataDatas.superChapterName = superChapterName;
  }
  final List<HomeArticleDataDataDatasTags>? tags =
      (json['tags'] as List<dynamic>?)
          ?.map((e) => jsonConvert.convert<HomeArticleDataDataDatasTags>(e)
              as HomeArticleDataDataDatasTags)
          .toList();
  if (tags != null) {
    homeArticleDataDataDatas.tags = tags;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    homeArticleDataDataDatas.title = title;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    homeArticleDataDataDatas.type = type;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    homeArticleDataDataDatas.userId = userId;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    homeArticleDataDataDatas.visible = visible;
  }
  final int? zan = jsonConvert.convert<int>(json['zan']);
  if (zan != null) {
    homeArticleDataDataDatas.zan = zan;
  }
  return homeArticleDataDataDatas;
}

Map<String, dynamic> $HomeArticleDataDataDatasToJson(
    HomeArticleDataDataDatas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adminAdd'] = entity.adminAdd;
  data['apkLink'] = entity.apkLink;
  data['audit'] = entity.audit;
  data['author'] = entity.author;
  data['canEdit'] = entity.canEdit;
  data['chapterId'] = entity.chapterId;
  data['chapterName'] = entity.chapterName;
  data['collect'] = entity.collect;
  data['courseId'] = entity.courseId;
  data['desc'] = entity.desc;
  data['descMd'] = entity.descMd;
  data['envelopePic'] = entity.envelopePic;
  data['fresh'] = entity.fresh;
  data['host'] = entity.host;
  data['id'] = entity.id;
  data['isAdminAdd'] = entity.isAdminAdd;
  data['link'] = entity.link;
  data['niceDate'] = entity.niceDate;
  data['niceShareDate'] = entity.niceShareDate;
  data['origin'] = entity.origin;
  data['prefix'] = entity.prefix;
  data['projectLink'] = entity.projectLink;
  data['publishTime'] = entity.publishTime;
  data['realSuperChapterId'] = entity.realSuperChapterId;
  data['selfVisible'] = entity.selfVisible;
  data['shareDate'] = entity.shareDate;
  data['shareUser'] = entity.shareUser;
  data['superChapterId'] = entity.superChapterId;
  data['superChapterName'] = entity.superChapterName;
  data['tags'] = entity.tags.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['type'] = entity.type;
  data['userId'] = entity.userId;
  data['visible'] = entity.visible;
  data['zan'] = entity.zan;
  return data;
}

extension HomeArticleDataDataDatasExtension on HomeArticleDataDataDatas {
  HomeArticleDataDataDatas copyWith({
    bool? adminAdd,
    String? apkLink,
    int? audit,
    String? author,
    bool? canEdit,
    int? chapterId,
    String? chapterName,
    bool? collect,
    int? courseId,
    String? desc,
    String? descMd,
    String? envelopePic,
    bool? fresh,
    String? host,
    int? id,
    bool? isAdminAdd,
    String? link,
    String? niceDate,
    String? niceShareDate,
    String? origin,
    String? prefix,
    String? projectLink,
    int? publishTime,
    int? realSuperChapterId,
    int? selfVisible,
    int? shareDate,
    String? shareUser,
    int? superChapterId,
    String? superChapterName,
    List<HomeArticleDataDataDatasTags>? tags,
    String? title,
    int? type,
    int? userId,
    int? visible,
    int? zan,
  }) {
    return HomeArticleDataDataDatas()
      ..adminAdd = adminAdd ?? this.adminAdd
      ..apkLink = apkLink ?? this.apkLink
      ..audit = audit ?? this.audit
      ..author = author ?? this.author
      ..canEdit = canEdit ?? this.canEdit
      ..chapterId = chapterId ?? this.chapterId
      ..chapterName = chapterName ?? this.chapterName
      ..collect = collect ?? this.collect
      ..courseId = courseId ?? this.courseId
      ..desc = desc ?? this.desc
      ..descMd = descMd ?? this.descMd
      ..envelopePic = envelopePic ?? this.envelopePic
      ..fresh = fresh ?? this.fresh
      ..host = host ?? this.host
      ..id = id ?? this.id
      ..isAdminAdd = isAdminAdd ?? this.isAdminAdd
      ..link = link ?? this.link
      ..niceDate = niceDate ?? this.niceDate
      ..niceShareDate = niceShareDate ?? this.niceShareDate
      ..origin = origin ?? this.origin
      ..prefix = prefix ?? this.prefix
      ..projectLink = projectLink ?? this.projectLink
      ..publishTime = publishTime ?? this.publishTime
      ..realSuperChapterId = realSuperChapterId ?? this.realSuperChapterId
      ..selfVisible = selfVisible ?? this.selfVisible
      ..shareDate = shareDate ?? this.shareDate
      ..shareUser = shareUser ?? this.shareUser
      ..superChapterId = superChapterId ?? this.superChapterId
      ..superChapterName = superChapterName ?? this.superChapterName
      ..tags = tags ?? this.tags
      ..title = title ?? this.title
      ..type = type ?? this.type
      ..userId = userId ?? this.userId
      ..visible = visible ?? this.visible
      ..zan = zan ?? this.zan;
  }
}

HomeArticleDataDataDatasTags $HomeArticleDataDataDatasTagsFromJson(
    Map<String, dynamic> json) {
  final HomeArticleDataDataDatasTags homeArticleDataDataDatasTags =
      HomeArticleDataDataDatasTags();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeArticleDataDataDatasTags.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    homeArticleDataDataDatasTags.url = url;
  }
  return homeArticleDataDataDatasTags;
}

Map<String, dynamic> $HomeArticleDataDataDatasTagsToJson(
    HomeArticleDataDataDatasTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension HomeArticleDataDataDatasTagsExtension
    on HomeArticleDataDataDatasTags {
  HomeArticleDataDataDatasTags copyWith({
    String? name,
    String? url,
  }) {
    return HomeArticleDataDataDatasTags()
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}
