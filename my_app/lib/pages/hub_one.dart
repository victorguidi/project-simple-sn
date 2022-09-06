// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/models/post.dart';
import 'package:my_app/models/user.dart';
import 'package:my_app/services/users_api.dart';

class HubOne extends StatelessWidget {
  const HubOne({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<Post>>(
          future: UsersApi.getPost(),
          builder: (context, snapshot) {
            final post = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  print(snapshot.error);
                  return Center(child: Text("Error"));
                } else {
                  return buildUsers(post!);
                }
            }
          },
        ),
      );

  Widget buildUsers(List<Post> post) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: post.length,
        itemBuilder: (context, index) {
          final p = post[index];

          return ListTile(
            title: Text(p.title),
            subtitle: Text(p.description),
          );
        },
      );
}

  // @override
  // Widget build(BuildContext context) => Scaffold(
  //       body: FutureBuilder<List<User>>(
  //         future: UsersApi.getUsersLocally(context),
  //         builder: (context, snapshot) {
  //           final users = snapshot.data;

  //           switch (snapshot.connectionState) {
  //             case ConnectionState.waiting:
  //               return Center(child: CircularProgressIndicator());
  //             default:
  //               if (snapshot.hasError) {
  //                 return Center(child: Text('Some error occurred!'));
  //               } else {
  //                 return buildUsers(users!);
  //               }
  //           }
  //         },
  //       ),
  //     );

  // Widget buildUsers(List<User> users) => ListView.builder(
  //       physics: BouncingScrollPhysics(),
  //       itemCount: users.length,
  //       itemBuilder: (context, index) {
  //         final user = users[index];

  //         return ListTile(
  //           leading: CircleAvatar(
  //             backgroundImage: NetworkImage(user.urlAvatar),
  //           ),
  //           title: Text(user.username),
  //           subtitle: Text(user.email),
  //         );
  //       },
  //     );