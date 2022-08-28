

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

import '../domain/model/AuthModel.dart';
import '../helper/cache_helper.dart';
import '../screens/home.dart';
import '../services/auth_services/auth_services.dart';

class LoginController extends GetxController {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  final services =AuthServices();
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
    FacebookAuthProvider.credential(loginResult.accessToken.token);
    print(loginResult.accessToken.token);
    CacheHelper.saveData(
        key: 'facebookToken', value: loginResult.accessToken.token);
    Get.to(Home());
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


  Future<UserCredential> signInWithTwitter() async {
    // Create a TwitterLogin instance
    final twitterLogin = new TwitterLogin(
        apiKey: 'ohaUULR4qQ9oF7ehSgktkhdsr',
        apiSecretKey:'B8p44dMZGY26kvAHdCswi3OfYqitzLIoWwezN8c2ex7LAdKUEh',
        redirectURI: 'NewsApp://'
    );

    // Trigger the sign-in flow
    final authResult = await twitterLogin.login();

    // Create a credential from the access token
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken,
      secret: authResult.authTokenSecret,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
  }

  Future<AuthModel>login()async{
    await services.login(nameController.text, passwordController.text);

  }


}