import 'package:saheefa/model/Posts/MostSeenPostsModel.dart';

import '../../constants/constants_url.dart';
import '../../helper/dio_integration.dart';

class MostSeenPostsServices{
  final dio = DioUtilNew.dio;
  MostSeenPostsModel mostSeenPostsModel;

  getMostSeenPosts() async {
    try {
      final response = await dio.get('${ConstantsURL.mostSeenPostsURl}');
      if (response.statusCode == 200) {
        print(response.data);
        mostSeenPostsModel = MostSeenPostsModel.fromJson(response.data);
      }
    } catch (e) {}
  }
}