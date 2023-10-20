import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/webtoon_detail_view_model.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/webtoon_detail_body.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class WebtoonDetailPage extends ConsumerWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  WebtoonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[900]),
      bottomNavigationBar: AppBottom(),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          print("리플래시됨");
          await ref.read(webtoonDetailProvider.notifier).notifyInit();
        },
        child: WebtoonDetailBody(),
      ),
    );
  }
}

class AppBottom extends StatelessWidget {
  const AppBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // 아이템 너비 고정
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '웹툰',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: '추천완결',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books),
          label: '베스트도전',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'My',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          label: '더보기',
        ),
      ],
      selectedItemColor: Colors.white,
      // 선택된 아이템의 아이콘 및 라벨 텍스트 색상
      unselectedItemColor: Colors.white,
      // 선택되지 않은 아이템의 아이콘 및 라벨 텍스트 색상
      backgroundColor: Colors.black, // 배경색 설정
    );
  }
}
