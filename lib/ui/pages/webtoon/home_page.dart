import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
    );
  }
}
