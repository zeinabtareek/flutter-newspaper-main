import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:saheefa/facebook_icons.dart';
import 'package:saheefa/twitter_icons.dart';
import 'package:saheefa/util/mycolor.dart';
import '../../controller/Auth_controller/auth_controller.dart';
import '../../google_icons.dart';
import '../home.dart';
import '../registration.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginBody(),
    );
  }
}

class _loginBody extends StatefulWidget {
  @override
  __loginBodyState createState() => __loginBodyState();
}

class __loginBodyState extends State<_loginBody> {
   final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  ListView(children: [
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
                  Text("مرحبا بك مرة اخرى",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: mycolor.red)),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email"),
                        SizedBox(height: 5.0),
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
                        Text("Password"),
                        SizedBox(height: 5.0),
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
                        SizedBox(height: 5.0),
                        Text(
                          "ForgetPassowrd?",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.redAccent),
                        ),
                        SizedBox(height: 5),
                        Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                              child: Text("login"),
                              onPressed: () => {
                                controller.login(),
                               // debugPrint("ddd"),
                               //  Navigator.pushNamed(context, "/home"),
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
                          "You can login with",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14.0),
                        )),   Center(
                            child: InkWell(
                              child: Text(
                          "Create New account ?",
                          style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14.0),
                        ),onTap: (){
                                Get.to(Registarion());
                            },
                            )),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Container(
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
                                child: Icon(
                                  Google.google,
                                  color: Colors.red,
                                ),
                              ),
                              onTap: (){
                                controller.signInWithGoogle();
                              },
                            ),
                            InkWell(
                              child: Container(
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
                                child: Icon(
                                  Twitter.twitter,
                                  color: mycolor.myCustomBlack,
                                ),
                              ),onTap: (){
                                controller.signInWithTwitter();
                                print('press twitter');
                            },
                            ),
                            InkWell(
                              child: Container(
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
                                child: Icon(
                                  Facebook.facebook,
                                  color: mycolor.blue,
                                ),
                              ),
                              onTap: (){
                                controller.signInWithFacebook();
                                debugPrint("ddd");
                              },
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
                            GestureDetector(
                              onTap: () {
                                debugPrint('movieTitle: hi muzamil');
                                Navigator.pushNamed(context, "/registeration");

                                // Get.to(Registarion());
                              },
                              child: Text(
                                "login now",
                                style: TextStyle(color: mycolor.red),
                              ),
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
