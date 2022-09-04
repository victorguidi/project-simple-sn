import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  final String postUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<Map> getPosts() async {
    var response = await http.get(Uri.parse(postUrl));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      // print(json);
      return json;
    } else {
      throw "Not Working";
    }
  }
}
