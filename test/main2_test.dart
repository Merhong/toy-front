import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/data/repository/webtoon_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Print Webtoon List', () async {
    WebtoonRepository repository = WebtoonRepository();
    List<Webtoon> webtoons = await repository.findAll();

    for (Webtoon webtoon in webtoons) {
      print('Image: ${webtoon.image}');
      print('Title: ${webtoon.title}');
      print('Author: ${webtoon.author}');
      print('Star Count: ${webtoon.starCount}');
      print('-------------------');
    }
  });
}