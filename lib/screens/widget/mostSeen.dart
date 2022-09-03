import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/Posts_controller/latest_posts_controller.dart';
import '../../helper/cache_helper.dart';
import '../../model/News.dart';
import '../../services/post_services/latest_posts_services.dart';

class MostSeen extends StatelessWidget {
  List<News> mostSeenlist;
 LatestPostsServices services;
  MostSeen({this.mostSeenlist});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * 0.6;
    double _width = MediaQuery.of(context).size.width / 2.6;
    return SizedBox(
        height: 200,
        child: GetBuilder<LatestPostsController>
          (init: LatestPostsController(),
                builder: (LatestPostsController controller)=>
                    FlatButton(
                  child: Text('dgd'),
                  onPressed: () async{
                 // await   LatestPostsServices().getLatestPosts();
                 await controller.getLatestPosts();
                  print('+++++++++++++${controller.listOfLatestPosts.data[0].postTitle.toString()}');
                     },)
      //             ListView.builder(
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               itemCount: controller.listOfLatestPosts.value.length,
      //               itemBuilder: (context, index) {
      //                 return Padding(
      //                   padding:  EdgeInsets.all(8.0),
      //                   child: Stack(
      //                     children: [
      //                       Container(
      //                         width: _width,
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(20),
      //                             gradient: LinearGradient(
      //                               colors: [
      //                                 const Color(0xFFFFFFFF),
      //                                 const Color(0xff4E4E4E),
      //                               ],
      //                               begin: Alignment.topCenter,
      //                               end: Alignment.bottomCenter,
      //                               stops: [0.0, 1.0],
      //                               tileMode: TileMode.clamp,
      //                             ),
      //                             image: DecorationImage(
      //                               image:
      //                                   new ExactAssetImage('images/car.png'),
      //                               fit: BoxFit.cover,
      //                             )),
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           mainAxisSize: MainAxisSize.max,
      //                           mainAxisAlignment: MainAxisAlignment.end,
      //                           children: [
      //                             Text(
      //                               "See",
      //                               style: Theme.of(context)
      //                                   .textTheme
      //                                   .headline6
      //                                   .copyWith(color: Colors.white),
      //                             ),
      //                             // Text(" controller.listOfLatestPosts.value[index].data.first.postTitle ",
      //                             // Text("${controller.listOfLatestPosts.value[index].data[index].id}",
      //                             //     style: Theme.of(context)
      //                             //         .textTheme
      //                             //         .headline6
      //                             //         .copyWith(color: Colors.blue)),
      //                           ],
      //                         ),
      //                       ),
      //                       Positioned(
      //                           top: 2,
      //                           child: Padding(
      //                             padding: const EdgeInsets.all(8.0),
      //                             child: Image.asset("images/vedio.png"),
      //                           ))
      //                     ],
      //                   ),
      //                 );
      //               }
      // )


            ));
  }


}
