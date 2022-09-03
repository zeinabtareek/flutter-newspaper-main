import 'package:get/get.dart';

 import '../../model/Posts/LatestPostsModel.dart';
import '../../services/post_services/latest_posts_services.dart';

class LatestPostsController extends GetxController{
  final services=LatestPostsServices();
final listOfLatestPosts=<LatestPostsModel>[].obs;
   getLatestPosts()async{
    listOfLatestPosts.value =await services.getLatestPosts();
  }
}

