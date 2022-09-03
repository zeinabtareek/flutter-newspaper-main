import 'package:get/get.dart';
import 'package:saheefa/services/post_services/single_post_services.dart';

class SinglePostController extends GetxController{
  final services =SinglePostServices();
  final id=''.obs;

  @override
  void onInit() {
    getOnSingleCat();
  }

  getOnSingleCat()async{
    await services.getOnSinglePost(id);
  }
}