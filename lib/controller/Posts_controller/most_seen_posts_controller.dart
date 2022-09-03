import 'package:get/get.dart';
import 'package:saheefa/model/Posts/MostSeenPostsModel.dart';
import 'package:saheefa/services/post_services/most_seen_posts_services.dart';

class MostSeenPostsController extends GetxController{
final services=MostSeenPostsServices();
final listOfMostSeenPosts=<MostSeenPostsModel>[].obs;
getMostSeenPosts()async{
  listOfMostSeenPosts.value =await services.getMostSeenPosts();
}
}