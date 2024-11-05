import 'package:get/get.dart';
import 'package:getx_demo/binding/init_binding.dart';
import 'package:getx_demo/feature/posts/view/posts_page.dart';
import '../../feature/home/view/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: InitBinding(),
    ),
    GetPage(
      name: _Paths.POSTS,
      page: () =>  PostsPage(),
      binding: InitBinding(),
    ),
  ];
}
