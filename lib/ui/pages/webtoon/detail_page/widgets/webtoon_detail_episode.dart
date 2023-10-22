import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:intl/intl.dart';

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
                    Text(
                        "${dateFormat.format(webtoon.episodeList![index].createdAt)}"),
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
