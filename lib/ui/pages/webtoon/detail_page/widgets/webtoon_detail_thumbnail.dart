import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';

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
            child: Text("+ 관심 2,364,554",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }

  Widget buildThumbnail(BuildContext context) {
    return Positioned(
      child: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/${image}',
                fit: BoxFit.cover, width: getScreenWidth(context) * 0.85)),
      ),
    );
  }
}
