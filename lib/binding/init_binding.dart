import 'package:get/get.dart';
import '../feature/posts/controller/posts_controller.dart';
import '../service/bottomnavigation_bar_service.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(PostsController()); it exist across the app it cant dispose
    Get.lazyPut<PostsController>(() => PostsController(), ); // it was dispose when it in not used and when access again create again when fenix are true
    Get.lazyPut<BottomnavigationBarService>(() => BottomnavigationBarService());
  }
}
