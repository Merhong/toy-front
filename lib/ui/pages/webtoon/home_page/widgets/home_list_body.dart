import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/ui/pages/webtoon/home_page/home_list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeListBody extends ConsumerWidget {
  const HomeListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomeListModel? model = ref.watch(HomeListProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }

    List<Webtoon> webtoonList = model!.webtoonList!;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: Icon(Icons.cookie),
          actions: [Icon(Icons.search)],
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            color: Colors.transparent,
            child: InkWell(
              child: Row(
                children: [
                  Spacer(),
                  Text("신작", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("매일+", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("월", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("화", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("수", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("목", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("금", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("토", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("일", style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Text("완결", style: TextStyle(color: Colors.black)),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount: webtoonList.length,
            (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Image.asset("${webtoonList[index].image}")),
                        Text("${webtoonList[index].title}"),
                        Row(children: [
                          Text("${webtoonList[index].title}"),
                          Text("⭐ ${webtoonList![index].starCount}"),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
