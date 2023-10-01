import 'package:flutter/material.dart';

import '../data/data.dart';

class ArticleInfoWidget extends StatelessWidget {
  ArticleInfoWidget(
      {super.key,
      required this.devwidth,
      required this.devheight,
      required this.index});

  final double devwidth;
  final double devheight;
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: devwidth * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWIotHotczo-GHEp_iWoQVBC-MjeWvniZyZmNy7X6Lgw&s'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      articles[index].author,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    const Text(
                      '3 hours Ago',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, devheight * 0.02, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.red,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: devwidth * 0.48,
                    child: Text(
                      articles[index].title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      maxLines: 2,
                    ),
                  ),
                  Text(articles[index].location,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                  Row(
                    children: List<Widget>.generate(5, (_current_index) {
                      double filAmount =
                          articles[index].rating - _current_index;
                      Icon starIcon;
                      if (filAmount >= 1) {
                        starIcon = const Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        );
                      } else if (filAmount >= 0.5) {
                        starIcon = const Icon(
                          Icons.star_half,
                          color: Colors.amberAccent,
                        );
                      } else {
                        starIcon = const Icon(
                          Icons.star_border,
                          color: Colors.amberAccent,
                        );
                      }
                      return starIcon;
                    }),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
