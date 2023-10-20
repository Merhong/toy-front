import 'package:flutter_blog/data/model/episode.dart';
import 'package:intl/intl.dart';

class Webtoon {
  final int id;
  final String title;
  final String author;
  double? starCount;
  String? image;
  String? weekDay;
  String? intro;
  String? hashtag;
  int? likeCount;
  List<Episode>? episodeList;

  Webtoon({
    required this.id,
    required this.title,
    required this.author,
    this.starCount,
    this.image,
    this.weekDay,
    this.intro,
    this.hashtag,
    this.likeCount,
    this.episodeList,
  });

  // Map 형태로 받아서 Dart 객체로 변환합니다.
  Webtoon.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        author = json["author"],
        starCount = json["starCount"],
        image = json["image"],
        weekDay = json["weekDay"],
        intro = json["intro"],
        hashtag = json["hashtag"],
        likeCount = json["likeCount"],
        episodeList = (json["episodeList"] as List).map((jsonEp) => Episode.fromJson(jsonEp)).toList();

  Webtoon.fromHomeJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        author = json["author"],
        starCount = json["starCount"],
        image = json["image"];

  @override
  String toString() {
    return 'Webtoon{id: $id, title: $title, author: $author, starCount: $starCount, image: $image, weekDay: $weekDay, intro: $intro, hashtag: $hashtag, likeCount: $likeCount, episodeList: $episodeList}';
  }
}
