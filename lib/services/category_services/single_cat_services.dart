import 'package:saheefa/constants/constants_url.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';

import '../../helper/dio_integration.dart';

class SingleCategoryServices{
  final dio =DioUtilNew.dio;
  SingleCategoryNodel singleCategoryNodel;
  getOnSingleCat(dynamic id)async {
try{
  final response=await dio.post('${ConstantsURL.singleCategoryURl}',data:{
    "category_id": id
  });
if(response.statusCode==200){
  print(response.data);
  singleCategoryNodel=SingleCategoryNodel.fromJson(response.data);
}
}catch(e){
  print(e);
}
  }
}