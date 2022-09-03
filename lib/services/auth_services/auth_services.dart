import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
 import 'package:saheefa/screens/home.dart';

import '../../constants/constants_url.dart';
  import '../../helper/cache_helper.dart';
import '../../helper/dio_integration.dart';
import '../../model/Auth/AuthModel.dart';
import '../../model/Auth/LogOutModel.dart';
import '../../model/Auth/response/RegisterModel.dart';

class AuthServices{
  final dio = DioUtilNew.dio;
  AuthModel authModel;
   register(RegisterModel registerModel) async {
    try {
      final response = await dio.post(ConstantsURL.registerURL, data:registerModel.toJson()
      );
      if (response.statusCode == 200) {
        print(response.data);
        authModel= AuthModel.fromJson(response.data);
         CacheHelper.saveData(key: 'token', value:authModel.data.token);
        Get.snackbar('Success', 'you  are logged in', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
    Get.offAll(Home());
      }
    } catch (e) {
      Get.snackbar('Filed', 'you  are not accessed', snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2));
      print(e);
    }
  }

  login(String user_email,String user_pass)async{
    try{
  var    data =  {
        'user_email':user_email,
        'user_pass':user_pass
      };
      final response = await dio.post('${ConstantsURL.loginURl}',
         data: data
     );
    authModel=AuthModel.fromJson(response.data);
     await CacheHelper.saveData(key: 'token', value:authModel.data.token.toString());
      print( await CacheHelper.getData(key: 'token'));
        Get.snackbar('Success', 'you  are logged in', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
        Get.offAll(Home());
    }catch(e){
      Get.snackbar('Filed', 'you  are not accessed', snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2));
      print(e);
    }
  }

  logout()async{
    LogOutModel logOutModel;
    try{
  var response = await dio.post('${ConstantsURL.logoutURl} ',  );
    logOutModel=LogOutModel.fromJson(response.data);
         Get.snackbar('Success', '${logOutModel.message}', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
        // Get.offAndToNamed(AppRoutes.home);
    }catch(e){
      Get.snackbar('Filed', '${logOutModel.message}', snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2));
      print(e);
    }
  }
  forgetPassword(String email )async{
     try{
       final response =await dio.post('${ConstantsURL.passwordForgotURl}',data: {
         "user_email":  email
       });
       if (response.statusCode == 200) {
         print(response.data);

  }}catch(e){
       
     }
  }

}