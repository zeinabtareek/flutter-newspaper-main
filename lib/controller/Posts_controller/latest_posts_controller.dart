import 'package:get/get.dart';

 import '../../model/Posts/LatestPostsModel.dart';
import '../../services/post_services/latest_posts_services.dart';

class LatestPostsController extends GetxController{
  final services=LatestPostsServices();
  LatestPostsModel listOfLatestPosts ;
    @override
  void onInit() {
    getLatestPosts();
  }
    getLatestPosts()async{
    try{
      listOfLatestPosts=await services.getLatestPosts();
    // print(listOfLatestPosts.data.length);
  }catch(e){
      print(e);
    }}
}

