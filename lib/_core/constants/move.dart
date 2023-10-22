import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/webtoon/detail_page/webtoon_detail_page.dart';
import 'package:flutter_blog/ui/pages/webtoon/home_page/home_list_page.dart';

class Move {
  static String webtoonDetailPage = "/webtoon/detail";
  static String homeListPage = "/webtoon/home";
// detail페이지는 페이지마다 주소가 다르니까 못함
}

// Map<String, Widget Function(BuildContext)> 를 반환하는 함수
Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.webtoonDetailPage: (context) => WebtoonDetailPage(),
    Move.homeListPage: (context) => HomeListPage(),
  };
}
