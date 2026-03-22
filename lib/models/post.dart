class Post {
  final int post_id;
  String author_name;
  String title;
  String? pic_url;
  DateTime date_created;
  int react_count;

  Post({
    required this.post_id,
    required this.author_name,
    required this.title,
    required this.date_created,
    required this.react_count,
    this.pic_url,
  });
}
