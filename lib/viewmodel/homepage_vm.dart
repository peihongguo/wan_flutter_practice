import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:wan_flutter/bean/banner_info_entity.dart';
import 'package:wan_flutter/bean/home_article_data_entity.dart';

class HomePageVM with ChangeNotifier {
  List<BannerInfoData> list = [];
  List<HomeArticleDataDataDatas> articleList = [];
  var page = 0;

  Future getBanner() async {
    Dio dio = Dio();
    dio.options.baseUrl = "https://wanandroid.com/";
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);

    Response response = await dio.get("/banner/json");
    BannerInfoEntity bannerInfoEntity =
        BannerInfoEntity.fromJson(response.data);
    if (bannerInfoEntity == null) {
      list = [];
    } else {
      list = bannerInfoEntity.data;
    }

    notifyListeners();
  }

  Future getHomeArticles() async {
    Dio dio = Dio();
    dio.options.baseUrl = "https://www.wanandroid.com";
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);
    Response response = await dio.get("/article/list/$page/json");
    HomeArticleDataEntity homeArticleDataEntity =
        HomeArticleDataEntity.fromJson(response.data);
    if (homeArticleDataEntity == null) {
      articleList = [];
    } else {
      articleList += homeArticleDataEntity.data.datas;
    }

    notifyListeners();
  }

  getMoreArticles() async {
    page++;
    await getHomeArticles();
  }

  refreshArticles() async {
    page = 0;
    articleList.clear();
    await getHomeArticles();
  }
}
