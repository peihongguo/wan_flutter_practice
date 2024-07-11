import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:provider/provider.dart';
import 'package:wan_flutter/routes/routes.dart';
import 'package:wan_flutter/viewmodel/homepage_vm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageVM homePageVM = HomePageVM();

  @override
  void initState() {
    homePageVM.getBanner();
    homePageVM.getHomeArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageVM>(
      create: (context) => homePageVM,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              buildSwiper(),
              buildListView(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget buildListView() {
    return Consumer<HomePageVM>(builder: (context, homePageVM, child) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
              height: 150.h,
              width: double.infinity,
              child: GestureDetector(
                child: _buildCard(index, homePageVM),
                onTap: () =>
                    Navigator.pushNamed(context, RoutePath.webViewPage),
              ));
        },
        itemCount: homePageVM.articleList?.length ?? 0,
      );
    });
  }

  Widget buildSwiper() {
    return Consumer<HomePageVM>(
      builder: (context, homePageVM, child) {
        return Container(
          height: 200.h,
          width: double.infinity,
          child: Swiper(
            itemCount: homePageVM.list?.length ?? 0,
            autoplay: true,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  homePageVM.list?[index].imagePath ?? "",
                  fit: BoxFit.fitWidth,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildCard(int index, HomePageVM homePageVM) {
    return Card(
      elevation: 5.r,
      child: _buildItem(index, homePageVM),
    );
  }

  Widget _buildItem(int index, HomePageVM homePageVM) {
    String personName = homePageVM.articleList?[index]?.author ??
        homePageVM.articleList?[index]?.shareUser ??
        "";

    String? persionName2 = "";
    if (homePageVM.articleList?[index]?.author != null) {
      persionName2 = homePageVM.articleList?[index]?.author;
    } else if (homePageVM.articleList?[index]?.shareUser != null) {
      persionName2 = homePageVM.articleList?[index]?.shareUser;
    }

    return Container(
      margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 8.h),
      padding: EdgeInsets.all(10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                child: Image.network(
                  "https://img1.baidu.com/it/u=1703107425,3580702917&fm=253&fmt=auto&app=138&f=JPEG",
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.cover,
                ), //头像
              ),
              SizedBox(width: 10.w),
              Text(
                persionName2 ?? "",
              ),
              const Expanded(child: SizedBox()),
              Text(homePageVM.articleList?[index]?.niceDate ?? ""),
              SizedBox(width: 10.w),
              Text(
                "置顶",
                style: TextStyle(fontSize: 13.sp),
              )
            ],
          ),
          Text(
            textAlign: TextAlign.start,
            homePageVM.articleList?[index]?.title ?? "",
            maxLines: 2,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              Text(
                homePageVM.articleList?[index]?.superChapterName ?? "",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
              const Expanded(child: SizedBox()),
              const Icon(Icons.favorite_border, color: Colors.black26),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.black26,
        width: 0.5.r,
      ),
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
    );
  }
}
