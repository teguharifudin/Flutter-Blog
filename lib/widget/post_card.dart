import 'package:flutter/material.dart';
import 'package:flutter_blog/model/posts.dart';
import 'package:flutter_blog/page/detail_page.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.posts}) : super(key: key);
  final Posts posts;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return DetailPage(posts: posts);
            }),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child:
                  Image.network(posts.imageUrl, height: 150, fit: BoxFit.cover),
            ),
            ListTile(
              title: Text(posts.title),
              // subtitle: Text(posts.summary),
            ),
          ],
        ),
      ),
    );
  }
}
