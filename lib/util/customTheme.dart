import 'package:flutter/material.dart';
 
 ThemeData customTheme(){


   TextTheme customTextTheme(TextTheme base){

     return base.copyWith(
headline1:base.headline1.copyWith(
  fontFamily:"",
  fontSize:22.0,
  color:Colors.black
)

     );


   }
   final ThemeData base=ThemeData.light();

     return base.copyWith(

       textTheme: customTextTheme(base.textTheme)
     );
   
 }