class Posts {
  int id;
  String title;
  String imageUrl;
  String summary;

  Posts(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.summary});

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
        id: json['id'],
        title: json['title'],
        imageUrl: json['imageUrl'],
        summary: json['summary']);
  }
}
