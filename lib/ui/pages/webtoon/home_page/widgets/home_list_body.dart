import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/ui/pages/webtoon/home_page/home_list_view_model.dart';
import 'package:flutter_blog/ui/pages/webtoon/home_page/widgets/home_list_scroll_view.dart';
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

    return HomeListScrollView(webtoonList: webtoonList);
  }
}
