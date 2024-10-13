import 'package:get/get.dart';
import 'package:txt_reader/pages/home.dart';
import 'package:txt_reader/pages/onboard.dart';

// 路由路径常量定义
class AppRoutes {
  static const String onBoard = '/onBoard';
  static const String home = '/home';
}

// 路由页面管理
class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.onBoard,
        page: () => OnBoardPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
