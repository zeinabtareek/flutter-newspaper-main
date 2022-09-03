import '../../constants/constants_url.dart';
import '../../helper/dio_integration.dart';
import '../../model/Posts/AllPostsModel.dart';

class AllPostsServices{
  final dio = DioUtilNew.dio;
  AllPostsModel allPostsModel;

  getAllPosts() async {
    try {
      final response = await dio.get('${ConstantsURL.allPostsURl}');
      if (response.statusCode == 200) {
        print(response.data);
        allPostsModel = AllPostsModel.fromJson(response.data);
      }
    } catch (e) {}
  }
}