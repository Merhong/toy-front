import 'package:flutter/material.dart';
import 'package:flutter_blog/widget/home_list_body.dart';

class HomePage extends StatelessWidget {
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
