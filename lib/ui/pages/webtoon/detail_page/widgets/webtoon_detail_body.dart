import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/ui/pages/webtoon/detail_page/webtoon_detail_view_model.dart';
import 'package:flutter_blog/ui/pages/webtoon/detail_page/widgets/webtoon_detail_description.dart';
import 'package:flutter_blog/ui/pages/webtoon/detail_page/widgets/webtoon_detail_episode.dart';
import 'package:flutter_blog/ui/pages/webtoon/detail_page/widgets/webtoon_detail_thumbnail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class WebtoonDetailBody extends ConsumerWidget {
  const WebtoonDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WebtoonDetailModel? model = ref.watch(webtoonDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }

    DateFormat dateFormat = DateFormat("yyyy-MM-dd");

    Webtoon webtoon = model!.webtoon;

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: webtoon.episodeList!.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              WebtoonDetailThumbnail(image: webtoon.image!),
              WebtoonDetailDescription(webtoon: webtoon),
              WebtoonDetailEpisode(
                  index: index, webtoon: webtoon, dateFormat: dateFormat),
            ],
          );
        } else {
          return WebtoonDetailEpisode(
              index: index, webtoon: webtoon, dateFormat: dateFormat);
        }
      },
    );
  }
}
