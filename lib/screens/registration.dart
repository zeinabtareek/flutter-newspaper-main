import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saheefa/controller/Auth_controller/auth_controller.dart';

import 'package:saheefa/facebook_icons.dart';
import 'package:saheefa/twitter_icons.dart';

import 'package:saheefa/util/mycolor.dart';

import '../google_icons.dart';

class Registarion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _signupBody(),
    );
  }
}

class _signupBody extends StatefulWidget {
  @override
  _registerBodyState createState() => _registerBodyState();
}

// ignore: camel_case_types
class _registerBodyState extends State<_signupBody> {
   final controller =Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return SafeArea(
      child: ListView(children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildImage("login.png"),
                  ),
                  SizedBox(),
                  Text("    سجل معنا ليصلك كل جديد  ",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(color: mycolor.myCustomBlack)),
                 Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("name"),
                        SizedBox(height: 10.0),
                        Container(
                          child: TextField(
                            controller: controller.nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide.none),
                              filled: true,
                              labelText: '',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.8,
                                    spreadRadius: 0.4)
                              ]),
                        ),
                        SizedBox(height: 16.0),
                        Text("Email"),
                        SizedBox(height: 10.0),
                        Container(
                          child: TextField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide.none),
                              filled: true,
                              labelText: '',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.8,
                                    spreadRadius: 0.4)
                              ]),
                        ),
                        SizedBox(height: 16.0),
                        Text("Password"),
                        SizedBox(height: 10.0),
                        Container(
                          child: TextField(
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide.none),
                              filled: true,
                              labelText: '',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.8,
                                    spreadRadius: 0.4)
                              ]),
                        ),
                        SizedBox(height: 16.0),
                        Text("ConfirmPassword"),
                        SizedBox(height: 10.0),
                        Container(
                          child: TextField(
                            controller: controller.confirmPassController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide.none),
                              filled: true,
                              labelText: '',
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.8,
                                    spreadRadius: 0.4)
                              ]),
                        ),
                        SizedBox(height: 20),
                        Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                              child: Text("register"),
                              onPressed: () {
                                print("it's pressed");
                                controller.register();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: mycolor.myCustomBlack,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            )),
                        SizedBox(height: 20),
                        Center(
                            child: Text(
                          "You can signup with",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 11.0),
                        )),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 0.8,
                                        spreadRadius: 0.4)
                                  ]),
                              child: Icon(Google.google,color: Colors.red,),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 0.8,
                                        spreadRadius: 0.4)
                                  ]),
                              child: Icon(Twitter.twitter,color: mycolor.myCustomBlack,),

                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 0.8,
                                        spreadRadius: 0.4)
                                  ]),
                              child: Icon(Facebook.facebook,color: mycolor.blue,),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "have acount?",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              "login",
                              style: TextStyle(color: mycolor.red),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _buildImage(String assetName, [double width = 500]) {
    return Image.asset('images/$assetName', width: width);
  }
}
