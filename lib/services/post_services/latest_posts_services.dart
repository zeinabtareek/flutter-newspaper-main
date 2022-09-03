import 'package:dio/dio.dart';

import '../../constants/constants_url.dart';
import '../../helper/cache_helper.dart';
import '../../helper/dio_integration.dart';
import '../../model/Posts/LatestPostsModel.dart';

class LatestPostsServices{
  // final dio = DioUtilNew.dio;
  Dio dio=Dio();
  LatestPostsModel latestPostsModel;

  getLatestPosts() async {
    final token =CacheHelper.getData(key: 'token');
    final res=await dio.get('https://www.kabrday.com/api/public/api/post/latest-posts',
        options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            }
        ));
    if (res.statusCode == 200) {
      print(res.data);
      latestPostsModel = LatestPostsModel.fromJson(res.data);
    }
    // await services.getLatestPosts();

  }
}