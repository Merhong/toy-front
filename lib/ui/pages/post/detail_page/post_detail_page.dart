import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/post.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_body.dart';

class PostDetailPage extends StatelessWidget {
  PostDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            buildSliverAppBar(context),
            buildSliverToBoxAdapter(),
            buildSliverToBoxAdapter2(),
            buildSliverList(),
          ],
        ),
        bottomNavigationBar: AppBottom());
  }

  SliverList buildSliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Container(
                height: 100,
                color: Colors.black,
                child: Row(
                  children: [
                    // 왼쪽에 이미지를 배치
                    Image.asset(
                      "assets/p1.jpeg", // 이미지 파일 경로
                      width: 150, // 이미지 너비 조정
                      height: 50, // 이미지 높이 조정
                      fit: BoxFit.fitWidth, // 이미지 크기 조정 (항목을 채우지 않고 비율 유지)
                    ),
                    SizedBox(width: 20), // 요소 사이의 간격 조정
                    // 오른쪽에 텍스트를 배치
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // 텍스트를 왼쪽 정렬로 배치
                        children: [
                          SizedBox(height: 25),
                          Text(
                            "466화 일해회(1계열사) [18]",
                            style: TextStyle(
                              color: Colors.white, // 텍스트 색상을 흰색으로 설정
                            ),
                          ),
                          Text(
                            "⭐ 9.61 23.10.19",
                            style: TextStyle(
                              color: Colors.white, // 텍스트 색상을 흰색으로 설정
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }

  SliverToBoxAdapter buildSliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black, // 배경색을 검은색으로 설정
          ),
          height: 100,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 텍스트를 왼쪽으로 정렬
                children: [
                  Text(
                    "외모지상주의",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // 폰트 굵기 설정
                      color: Colors.white, // 텍스트 색상을 흰색으로 설정
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "박태준",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // 폰트 굵기 설정
                          color: Colors.white, // 텍스트 색상을 흰색으로 설정
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.check_box,
                        color: Colors.green, // 아이콘 색상 설정
                        size: 24, // 아이콘 크기 설정
                      ),
                      SizedBox(width: 10),
                      Text(
                        "금요웹툰",
                        style: TextStyle(
                          fontWeight: FontWeight.w100, // 폰트 굵기 설정
                          color: Colors.grey, // 텍스트 색상을 흰색으로 설정
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "못생기고 뚱뚱하다고 괴롭힘을 당하여 루저인 새끼",
                    style: TextStyle(
                      color: Colors.grey, // 텍스트 색상을 흰색으로 설정
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  SliverToBoxAdapter buildSliverToBoxAdapter2() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, // 배경색을 검은색으로 설정
        ),
        height: 20,
        child: Row(
          children: [
            Text(
              "5개의",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Text(
              "의 미리보기가 있습니다",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 40), // 이미지와 텍스트 사이에 간격 추가
          ],
        ),
      ),
    );
  }

  SliverAppBar buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        // 뒤로가기 아이콘
        onPressed: () {
          // 뒤로가기 버튼을 누를 때 처리할 로직을 여기에 추가
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          // 플러스(+) 버튼 아이콘
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.more_vert), // "아이콘 더보기" 아이콘
          onPressed: () {
            // "아이콘 더보기"를 누를 때 처리할 로직을 여기에 추가
            // 예를 들면, 추가 옵션 표시 등의 작업을 수행할 수 있습니다.
          },
        ),
      ],
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://picsum.photos/200/300",
          fit: BoxFit.cover,
        ),
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
