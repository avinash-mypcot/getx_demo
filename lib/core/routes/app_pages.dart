import 'package:get/get.dart';
import 'package:getx_demo/binding/init_binding.dart';
import 'package:getx_demo/feature/posts/view/posts_page.dart';
import '../../feature/bottomnavigation_bar/custom_bottomnavigation_bar.dart';
import '../../feature/home/view/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CUSTOMBOTTOMNAV;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomePage(),
      binding: InitBinding(),
    ),
    GetPage(
      name: _Paths.POSTS,
      page: () =>  PostsPage(),
      binding: InitBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMBOTTOMNAV,
      page: () => CustomBottomnavigationBar(),
      binding: InitBinding(),
    ),

  ];
}
