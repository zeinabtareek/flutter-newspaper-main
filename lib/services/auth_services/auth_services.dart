import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../constants/constants_url.dart';
import '../../domain/model/AuthModel.dart';
import '../../helper/cache_helper.dart';
import '../../helper/dio_integration.dart';

class AuthServices{
  // final dio = DioUtilNew.dio;
  final dio=Dio();
  AuthModel authModel=AuthModel();
  login(String user_email,String user_pass)async{
    try{
  var    data =  {
        'user_email':user_email,
        'user_pass':user_pass
      };
      final response = await dio.post('${ConstantsURL.baseURL}login?user_email=$user_email&user_pass=$user_pass',
         data:json.encode(data)
     );
    authModel=AuthModel.fromJson(response.data);
     await CacheHelper.saveData(key: 'token', value:authModel.data.token.toString());
      print( await CacheHelper.getData(key: 'token'));
        Get.snackbar('Success', 'you  are logged in', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
        // Get.offAndToNamed(AppRoutes.home);
    }catch(e){
      Get.snackbar('Filed', 'you  are not accessed', snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2));
      print(e);
    }
  }


}