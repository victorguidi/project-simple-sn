// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/services/http_service.dart';

class HubOne extends StatelessWidget {
  HubOne({super.key});

  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          print(snapshot);
          if (snapshot.hasData) {
            return Text("Heeeey");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
