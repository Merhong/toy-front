import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/ui/pages/post/home_page/home_list_view_model.dart';
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

    List<Webtoon> webtoonList = model!.webtoonList;

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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return Container(
                height: 800,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child: Text("${webtoonList[0]}"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[200],
                      child: Text("${webtoonList[1]}"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[300],
                      child: const Text('Sound of screams but the'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[600],
                      child: const Text('Revolution, they...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[200],
                      child: const Text('Heed not the rabble'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[300],
                      child: const Text('Sound of screams but the'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[600],
                      child: const Text('Revolution, they...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[600],
                      child: const Text('Revolution, they...'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
