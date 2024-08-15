import 'package:flutter/material.dart';
import 'package:flutter_blog/model/posts.dart';

class DetailPage extends StatelessWidget {
  final Posts posts;
  const DetailPage({Key? key, required this.posts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.network(posts.imageUrl),
            ),
            ListTile(
              title: Text(posts.title),
              subtitle: Text(posts.summary),
            ),
          ])),
    );
  }
}
