import '../../constants/constants_url.dart';
import '../../helper/dio_integration.dart';
import '../../model/Posts/LatestPostsModel.dart';

class LatestPostsServices{
  final dio = DioUtilNew.dio;
  LatestPostsModel latestPostsModel;

  getLatestPosts() async {
    try {
      final response = await dio.get('${ConstantsURL.latestPostsURl}');
      if (response.statusCode == 200) {
        print(response.data);
        latestPostsModel = LatestPostsModel.fromJson(response.data);
      }
    } catch (e) {}
  }
}