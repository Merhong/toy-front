import 'package:flutter/material.dart';
import 'package:flutter_blog/data/model/webtoon.dart';
import 'package:flutter_blog/data/repository/webtoon_repository.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webtoons'),
      ),
      body: FutureBuilder<List<Webtoon>>(
        future: WebtoonRepository().findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available.'));
          } else {
            final webtoons = snapshot.data!;
            return ListView.separated(
              itemCount: webtoons.length,
              itemBuilder: (context, index) {
                final webtoon = webtoons[index];
                return Column(
                  children: [
                    // Use webtoon data here
                    Image.network(
                      webtoon.image,
                      height: 300,
                    ),
                    Text(webtoon.title),
                    Text(webtoon.author),
                    Text(webtoon.starCount),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            );
          }
        },
      ),
    );
  }
}
