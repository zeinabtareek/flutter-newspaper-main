import 'package:get/get.dart';
 import 'package:saheefa/model/Posts/AllPostsModel.dart';

import '../../services/post_services/get_all_posts_services.dart';

class AllPostsController extends GetxController{
  final services=AllPostsServices();
  final listOfAllPosts=<AllPostsModel>[].obs;
  getMostSeenPosts()async{
    listOfAllPosts.value =await services.getAllPosts();
  }
}