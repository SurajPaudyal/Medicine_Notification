import 'package:flutter/foundation.dart';
import 'package:flutter_application/components/horizontal_listview.dart';
import 'package:flutter_application/models/category.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  // List<Category> categoryList = [];

  @override
  onInit() {
    fetchCategory();
    super.onInit();
  }

  fetchCategory() {
    fetchCategoryFromDatabase().then((value) {
      // categoryList = value;
      update();
    });
  }
}
