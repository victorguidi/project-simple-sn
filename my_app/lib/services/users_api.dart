import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/models/post.dart';
import 'package:my_app/models/user.dart';

class UsersApi {
  static Future<List<Post>> getPost() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body);
    var data = body.map<Post>(Post.fromJson).toList();

    return body.map<Post>(Post.fromJson).toList();
  }

  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}
