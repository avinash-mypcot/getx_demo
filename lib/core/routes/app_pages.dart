import 'package:get/get.dart';
import 'package:getx_demo/feature/posts/presentation/pages/posts_page.dart';
import '../../app/modules/home/bindings/home_binding.dart';
import '../../feature/home/presentation/pages/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: _Paths.POSTS,
      page: () => const PostsPage(),
      binding: HomeBinding(),
    ),
  ];
}
