import 'package:prop/Models/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  Future<List<Post>> fetchPosts(String url) async {
    var apiUrl = Uri.parse(url);
    var response = await client.get(apiUrl);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return postFromJson(jsonString);
    } else {
      return [];
    }
  }
}