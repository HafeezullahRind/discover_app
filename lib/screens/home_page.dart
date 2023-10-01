import 'package:discover_app/Widgets/ArticleInfoWidget.dart';
import 'package:discover_app/data/data.dart';
import 'package:flutter/material.dart';

import '../Widgets/social_infoWidget.dart';
import '../Widgets/topAppbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var devheight;
  var devwidth;
  List<String> locations = ['Karachi', 'Lahore', 'Islamabad', 'Kashmir'];
  int ActiveLocation = 1;
  @override
  Widget build(BuildContext context) {
    devheight = MediaQuery.of(context).size.height;
    devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        top: true,
        left: false,
        bottom: true,
        right: false,
        minimum: EdgeInsets.fromLTRB(devwidth * 0.05, 0, devwidth * 0.05, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const topAppbar(),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: devheight * 0.07,
                width: devwidth,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: locations.map((e) {
                    bool is_active =
                        locations[ActiveLocation] == e ? true : false;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e,
                            style: TextStyle(
                              color:
                                  is_active ? Colors.white : Colors.grey[500],
                            )),
                        is_active == true
                            ? Container(
                                height: 5,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.orange[900],
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            : Container()
                      ],
                    );
                  }).toList(),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: devheight * 0.3,
                          width: devwidth,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(articles[index].image),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                    offset: Offset(0, 6))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                            child: ArticleInfoWidget(
                                devwidth: devwidth,
                                devheight: devheight,
                                index: index),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: -15,
                          left: devwidth * 0.10,
                          child: socialInfoWidget(
                            devheight: devheight,
                            devwidth: devwidth,
                            index: index,
                          ))
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
