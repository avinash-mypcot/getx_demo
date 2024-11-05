import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post_model.dart';

class PostRepository {
  Future<List<PostModel>> fetchPost() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    // final data = JsonEncoder(response.body);
    if (response.statusCode == 200) {
      List<PostModel> data = List<PostModel>.from(
          json.decode(response.body).map((x) => PostModel.fromJson(x)));
      // for (int i = 0; i < response.body.length; i++) {
      //   data.add(PostModel.fromJson(response.body[i]));
      // }

      return data;
    } else {
      return [];
    }
  }
}
