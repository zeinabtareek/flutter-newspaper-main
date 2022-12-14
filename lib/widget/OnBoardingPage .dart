import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../helper/cache_helper.dart';
import '../screens/home.dart';
import '../screens/login_screen/login.dart';
 

class OnBoardingPage  extends StatefulWidget {
  @override
  _OnBoardingPage   createState() => _OnBoardingPage();
}

class _OnBoardingPage   extends State<OnBoardingPage > {

  
    final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) async{
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }


  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return SafeArea(
      child: IntroductionScreen(

        pages: [
          PageViewModel(
            title:"this is news app",
            body:"Download the Stockpile app and master the market with our mini-lesson.",
            image: _buildImage("image1.jpg")
            ,
             decoration: pageDecoration,
          )
         ,
           PageViewModel(
            title:"this is news app",
            body:"Download the Stockpile app and master the market with our mini-lesson.",
            image: _buildImage("image2.jpg"),
             decoration: pageDecoration,
          ),
            PageViewModel(
            title:"this is news app",
            body:"Download the Stockpile app and master the market with our mini-lesson.",
            image: _buildImage("img3.jpg"),
             decoration: pageDecoration,
          ),
           PageViewModel(
          title: "Full Screen Page",
          body:
              "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
          image: _buildFullscrenImage(),
          decoration: PageDecoration(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            // fullScreen: true,
            //
            // bodyFlex: 2,
            // imageFlex: 3,
          ),
        ),
        ]
         , 
          onDone: () => _onIntroEnd(context),
     
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
 
      skip: const Text('Skip'),
      next: const Text("Next"),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      

      ),

    );
  }

  
  Widget _buildFullscrenImage() {
    return Image.asset(
      'images/image1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('images/$assetName', width: width);
  }

}