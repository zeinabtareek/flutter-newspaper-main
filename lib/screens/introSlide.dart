import 'package:flutter/material.dart';

import '../model/Slide.dart';
import '../slider.dart';
import '../widget/Indicator.dart';
 

class IntroSlider extends StatefulWidget {
  IntroSlider({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyIntroSliderState createState() => _MyIntroSliderState();
}

class _MyIntroSliderState extends State<IntroSlider> {
 

 List<Slide> slides = new List<Slide>();
  int currentIndex = 0;
  PageController _controller;
static const _kDuration = const Duration(milliseconds: 300);
static const _kCurve = Curves.ease;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides=getSlides();
    _controller = PageController(initialPage: 0);
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
      _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
     


    return Scaffold(
       
      body: Stack(
         
         
         children: [

           Expanded(
             child:PageView.builder(
               scrollDirection: Axis.horizontal,
               onPageChanged: (value){
                 setState(() {
                   

                   currentIndex=value;
            
                 });
               },
               
               itemCount: slides.length,
               itemBuilder: (context,index){

return MySlider(image:slides[index].getImage());

               }
             )

             
           )

,
   
   Positioned(
  bottom: 60,
  left: 150,
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Indicator(
        positionIndex: 0,
        currentIndex: currentIndex,
      ),
      SizedBox(
        width: 10,
      ),
      Indicator(
        positionIndex: 1,
        currentIndex: currentIndex,
      ),
      SizedBox(
        width: 10,
      ),
      Indicator(
        positionIndex: 2,
        currentIndex: currentIndex,
      ),
    ],
  ),
), 

Positioned(
  bottom: 30,
  
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
              onTap: () => previousFunction(),
              child: Text("Previous")),
          SizedBox(
            width: 50,
          ),
          InkWell(onTap: () => nextFunction(), child: Text("Next"))
        ],
      ),
    ),
  ),
)

         ],
      ),
     
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


   Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
    );
  }

onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  nextFunction() {
    _controller.nextPage(duration: _kDuration, curve: _kCurve);
  }
 previousFunction() {
    _controller.previousPage(duration: _kDuration, curve: _kCurve);
  }

}
