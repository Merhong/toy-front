import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';

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
          Text("${webtoon.title}",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
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
            decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("광고")),
          )
        ],
      ),
    );
  }
}
