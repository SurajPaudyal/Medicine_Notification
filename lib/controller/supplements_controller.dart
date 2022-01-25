import 'package:flutter_application/models/supplements.dart';
import 'package:get/get.dart';

class SupplementsController extends GetxController {
  List<Supplements> supplementsList = [];

  @override
  onInit() {
    fetchSupplement();
    super.onInit();
  }

  fetchSupplement() {
    fetchSupplementsFromDatabase().then((value) {
      supplementsList = value;
      update();
    });
  }
}
