import 'package:flutter/material.dart';
import 'package:wan_flutter/pages/webview_page.dart';

import '../pages/home_page.dart';

class RoutePath {
  static const String home = "/";
  static const String webViewPage = "/webview_page";
}

class Routes {
  static Route route(RouteSettings setting) {
    switch (setting.name) {
      case RoutePath.home:
        return pageRoute(const HomePage());
      case RoutePath.webViewPage:
        return MaterialPageRoute(builder: (context) => WebviewPage());
      default:
        return pageRoute(const HomePage());
    }
  }

  static MaterialPageRoute<dynamic> pageRoute(
    Widget page, {
    RouteSettings? settings,
    bool? maintainState = true,
    bool? fullscreenDialog,
    bool? allowSnapshotting = true,
    bool? barrierDismissible = false,
  }) {
    return MaterialPageRoute(
        builder: (context) => page,
        settings: settings,
        maintainState: maintainState ?? false,
        fullscreenDialog: fullscreenDialog ?? false,
        allowSnapshotting: allowSnapshotting ?? true,
        barrierDismissible: barrierDismissible ?? false);
  }
}
