
import 'package:flutter/material.dart';

import '../data/data.dart';

class socialInfoWidget extends StatelessWidget {
  socialInfoWidget(
      {super.key,
      required this.devheight,
      required this.devwidth,
      required this.index});

  final devheight;
  final devwidth;
  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: devheight * 0.10,
      width: devwidth * 0.7,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(
                articles[index].likes.toString(),
                style: const TextStyle(
                  color: Colors.red,
                ),
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.comment),
              Text(articles[index].comments.toString())
            ],
          ),
          Row(
            children: [
              const Icon(Icons.share_sharp),
              Text(articles[index].shares.toString())
            ],
          )
        ],
      ),
    );
  }
}
