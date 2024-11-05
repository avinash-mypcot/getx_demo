import 'package:get/get.dart';
import 'package:getx_demo/feature/posts/model/post_model.dart';
import 'package:getx_demo/feature/posts/repository/post_repository.dart';


class PostsController extends GetxController {

 
    RxBool isLoading = true.obs;
    //final isLoading = RX<bool>;
    RxList<PostModel> posts = <PostModel>[].obs;

    fetchPosts()async{
      try{
        isLoading(true);

        List<PostModel> postList = await PostRepository().fetchPost();

        posts.addAll(postList);
        isLoading(false);
      }catch(e){
          rethrow;
      }finally{
        isLoading(false);
      }
    }

    @override
    void onInit(){
    super.onInit();
    fetchPosts();
      
    }

}
