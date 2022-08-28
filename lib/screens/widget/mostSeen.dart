import 'package:flutter/material.dart';
import 'package:saheefa/domain/model/News.dart';

class MostSeen extends StatelessWidget {
  List<News> mostSeenlist;

  MostSeen({this.mostSeenlist});
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * 0.6;
    double _width = MediaQuery.of(context).size.width / 2.6;
    return SizedBox(
      height: 200,
    
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mostSeenlist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: _width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFFFFFF),
                                const Color(0xff4E4E4E),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                            image: DecorationImage(
                              image: new ExactAssetImage('images/car.png'),
                              fit: BoxFit.cover,
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "See",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: Colors.white),
                            ),
                            Text("See the part of words",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(color: Colors.white)),
                          ],
                        ),

                        
                      )
                      ,
                     Positioned(
                       top: 2,
                      

                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Image.asset("images/vedio.png"),
                       ))
                    ],

                
                  ),
                );
              }),
    );
  }
}
