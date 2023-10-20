import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/data/model/episode.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/webtoon_detail_view_model.dart';
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
              WebtoonDetailEpisode(index: index, webtoon: webtoon, dateFormat: dateFormat),
            ],
          );
        } else {
          return WebtoonDetailEpisode(index: index, webtoon: webtoon, dateFormat: dateFormat);
        }
      },
    );
  }
}

class WebtoonDetailEpisode extends StatelessWidget {
  const WebtoonDetailEpisode({
    super.key,
    required this.webtoon,
    required this.dateFormat,
    required this.index,
  });

  final int index;
  final Webtoon webtoon;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("클릭");
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            SizedBox(
              width: getScreenWidth(context) * 0.25,
              height: 50,
              child: Image.asset(
                'assets/${webtoon.episodeList![index].thumbnail}',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${webtoon.episodeList![index].detailTitle}"),
                Row(
                  children: [
                    Text("⭐ ${webtoon.episodeList![index].starCount}"),
                    SizedBox(width: 10),
                    Text("${dateFormat.format(webtoon.episodeList![index].createdAt)}"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WebtoonDetailDescription extends StatelessWidget {
  const WebtoonDetailDescription({
    super.key,
    required this.webtoon,
  });

  final Webtoon webtoon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${webtoon.title}", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text("${webtoon.author}"),
              SizedBox(width: 10),
              Text("${webtoon.weekDay}요웹툰"),
            ],
          ),
          Text("${webtoon.intro}"),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey[300], border: Border.all(width: 1), borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("광고")),
          )
        ],
      ),
    );
  }
}

class WebtoonDetailThumbnail extends StatelessWidget {
  final String image;

  const WebtoonDetailThumbnail({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.blue[900], height: 60),
        buildThumbnail(context),
        buildInteresting(context),
      ],
    );
  }

  Positioned buildInteresting(BuildContext context) {
    return Positioned(
      child: SizedBox(
        height: 180,
        child: Align(
          alignment: Alignment(0, 1),
          child: Container(
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("+ 관심 2,364,554", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }

  Widget buildThumbnail(BuildContext context) {
    return Positioned(
      child: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10), child: Image.asset('assets/${image}', fit: BoxFit.cover, width: getScreenWidth(context) * 0.85)),
      ),
    );
  }
}
