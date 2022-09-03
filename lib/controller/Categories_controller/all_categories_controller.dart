import 'package:get/get.dart';
import 'package:saheefa/model/Categories/AllCategoryModel.dart';

import '../../services/category_services/get_cat_services.dart';

class AllCategoriesController extends GetxController{
  final services =CategoryServices();
  final listOfAllCat=<AllCategoryModel>[].obs;

  @override
  void onInit() {
    getAllCategory();
  }

  getAllCategory()async{
   listOfAllCat.value = await services.getAllCategory();
  }

}