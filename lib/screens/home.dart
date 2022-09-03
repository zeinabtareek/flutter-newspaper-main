import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:saheefa/controller/Posts_controller/latest_posts_controller.dart';
import 'package:saheefa/model/Categories/Category.dart';
import 'package:saheefa/model/News.dart';
import 'package:saheefa/screens/pages/newsDetail.dart';
import 'package:saheefa/screens/widget/categoryListItem.dart';
import 'package:saheefa/screens/widget/mostSeen.dart';

import 'package:saheefa/util/mycolor.dart';

class Home extends StatelessWidget {
  List<News> mostSeenlist = [
    News("", "    ", "d"),
    News("", " تقارير وتخفيضات", ""),
    News("", "الرياضة", ""),
    News("", "الثقافية", ""),
  ];

  List<News> latestNews = [
    News("", "    ",
        "The Avanti (including the Avanti II) is an American performance sports coupe based on the Studebaker Avanti and marketed through a succession of five different ownership arrangements between 1965 and 2006."),
    News("", "  ",
        "The Avanti (including the Avanti II) is an American performance sports coupe based on the Studebaker Avanti and marketed through a succession of five different ownership arrangements between 1965 and 2006."),
    News("", " ",
        "The Avanti (including the Avanti II) is an American performance sports coupe based on the Studebaker Avanti and marketed through a succession of five different ownership arrangements between 1965 and 2006."),
    News("", " ",
        "The Avanti (including the Avanti II) is an American performance sports coupe based on the Studebaker Avanti and marketed through a succession of five different ownership arrangements between 1965 and 2006."),
  ];

  List<CategoryList> categorieslist = [
    CategoryList(1, "المملكة اليوم"),
    CategoryList(1, " تقارير وتخفيضات"),
    CategoryList(1, "الرياضة"),
    CategoryList(1, "الثقافية"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor.white,
      appBar: AppBar(
        backgroundColor: mycolor.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Search(),
                      SizedBox(height: 10.0),
                      BuildCategoryListItem(categorieslist: categorieslist),
                      SizedBox(height: 20.0),
                      buildBanner(),
                      SizedBox(height: 10.0),
                      Text(
                        "25/04/202",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: mycolor.red),
                      ),
                      Text(
                        "Most Seen",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.black),
                      ),
                      MostSeen(mostSeenlist: mostSeenlist),
                      Text(" latest News",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Colors.black)),
                      BuildLatestNews(latestNews)
                    ],
                  )

        ),
      ),
    );
  }

  buildBanner() => BuildBanner();
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          color: mycolor.fadegrey,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 0.8, spreadRadius: 0.5),
          ]),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            prefixIcon: Icon(Icons.search),
            hintText: "seach .."),
      ),
    );
  }
}

class BuildLatestNews extends StatelessWidget {
  List<News> latestnews;

  BuildLatestNews(this.latestnews);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * 0.6;
    double _width = MediaQuery.of(context).size.width / 3.9;
    return SizedBox(
      height: _height,
      child: ListView.builder(
        itemCount: latestnews.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        NewsDetails(latestNews: latestnews[index])),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                elevation: 3,
                child: Container(
                  constraints: BoxConstraints(minHeight: 120),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildImage(_width),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "28/04/2021",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: mycolor.red),
                            ),
                            Text(
                              latestnews[index].content,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildImage(double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        image: new DecorationImage(
          image: new ExactAssetImage('images/car.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BuildBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: mycolor.myCustomBlack,
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text("ADC",
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: mycolor.red)),
    );
  }
}
