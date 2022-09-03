import 'package:saheefa/constants/constants_url.dart';
import 'package:saheefa/helper/dio_integration.dart';
import 'package:saheefa/model/Categories/AllCategoryModel.dart';

class CategoryServices {
  final dio = DioUtilNew.dio;
  AllCategoryModel allCategoryModel;

  getAllCategory() async {
    try {
      final response = await dio.get('${ConstantsURL.allCategoriesURl}');
      if (response.statusCode == 200) {
        print(response.data);
        allCategoryModel = AllCategoryModel.fromJson(response.data);
      }
    } catch (e) {}
  }
}
