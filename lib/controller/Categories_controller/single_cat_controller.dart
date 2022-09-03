import 'package:get/get.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/services/category_services/single_cat_services.dart';

class SingleCategoryController extends GetxController{
  final services =SingleCategoryServices();
  final id=''.obs;

  @override
  void onInit() {
    getOnSingleCat();
  }

  getOnSingleCat()async{
    await services.getOnSingleCat(id);
  }
}