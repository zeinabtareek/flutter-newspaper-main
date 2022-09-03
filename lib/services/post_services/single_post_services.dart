import 'package:saheefa/constants/constants_url.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/model/Posts/SinglePostModel.dart';

import '../../helper/dio_integration.dart';

class SinglePostServices{
  final dio =DioUtilNew.dio;
  SinglePostModel singlePostModel;
  getOnSinglePost(dynamic id)async {
    try{
      final response=await dio.post('${ConstantsURL.singleCategoryURl}',data:{
        "post_id": id
      });
      if(response.statusCode==200){
        print(response.data);
        singlePostModel=SinglePostModel.fromJson(response.data);
      }
    }catch(e){
      print(e);
    }
  }
}