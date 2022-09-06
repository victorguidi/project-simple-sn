import 'package:meta/meta.dart';

// class Post {
//   // final int userId;
//   // final int id;
//   final String title;
//   final String body;

//   const Post({
//     // required this.userId,
//     // required this.id,
//     required this.title,
//     required this.body,
//   });

//   static Post fromJson(json) => Post(
//         // userId: json['userid'],
//         // id: json['id'],
//         title: json['title'],
//         body: json['body'],
//       );
// }

class Post {
  // final int userId;
  // final int id;
  final String title;
  final String description;

  const Post({
    // required this.userId,
    // required this.id,
    required this.title,
    required this.description,
  });

  static Post fromJson(json) => Post(
        // userId: json['userid'],
        // id: json['id'],
        title: json['title'],
        description: json['description'],
      );
}
