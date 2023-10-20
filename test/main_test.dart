import 'package:flutter_blog/data/model/webtoon.dart';

void main() {
  List<Webtoon> webtoons = [
    Webtoon(
      image: "https://image-comic.pstatic.net/webtoon/641253/thumbnail/thumbnail_IMAG21_01672165-03c8-44b1-ba0e-ef82c9cfcd10.jpg",
      title: "외모지상주의",
      author: "박태준",
      starCount: "9.47",
    ),
    Webtoon(
      image: "https://image-comic.pstatic.net/webtoon/817081/thumbnail/thumbnail_IMAG21_439e78c2-e71e-4671-ad2f-703327c0bd8d.jpeg",
      title: "오늘은나랑만나",
      author: "네이버웹툰 작가",
      starCount: "9.83",
    ),
  ];

  for (Webtoon webtoon in webtoons) {
    print("Image: ${webtoon.image}");
    print("Title: ${webtoon.title}");
    print("Author: ${webtoon.author}");
    print("Star Count: ${webtoon.starCount}");
    print("--------------------");
  }
}