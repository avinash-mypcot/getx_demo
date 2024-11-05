import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/feature/posts/controller/posts_controller.dart';

class PostsPage extends StatelessWidget {
  // class PostsPage extends GetView<PostsController>{
  PostsPage({super.key});

  var postController = Get.put(PostsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Posts',
            style: TextStyle(color: Colors.white, height: 1),
          ),
        ),
        body: Obx(() {
          if (postController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blueGrey,
              ),
            );
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: postController.posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10.h),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Title :",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      TextSpan(
                        text: "${postController.posts[index].title}",
                      )
                    ])),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Body :",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      TextSpan(
                        text: "${postController.posts[index].body}",
                      )
                    ])),
                  ],
                ),
              );
            },
          );
        }));
  }
}
