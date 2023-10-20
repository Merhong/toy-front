import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/webtoon/home_page/widgets/home_list_body.dart';

class HomeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webtoons'),
      ),
      body: HomeListBody(),
    );
  }
}
