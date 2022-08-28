import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saheefa/domain/model/News.dart';
import 'package:saheefa/util/mycolor.dart';

// ignore: must_be_immutable
class NewsDetails extends StatelessWidget {
  News latestNews;
  NewsDetails({Key key, @required this.latestNews}) : super(key: key);
  String content =
      "At the time it was not illegal to hunt elephants in Botswana, though it has since been restricted. In November last year the International Union for Conservation of Nature's Red List of Endangered Species listed the species of elephant killed as endangered.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mycolor.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: new ExactAssetImage('images/car.png'),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset("images/facebook.svg"),
                         SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset("images/twitter.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset("images/share.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "share",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: mycolor.red),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("today news",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: mycolor.red))
                  ],
                ),
              ),
              Text(latestNews.content),
            ],
          ),
        ),
      ),
    );
  }
}
