import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySlider extends StatelessWidget {

  String image;
  MySlider({this.image});
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
                   Image(image: AssetImage(image)),
            SizedBox(height: 25),

        ],),

      ),
    );  
  }
}