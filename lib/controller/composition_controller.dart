import 'package:flutter_application/models/composition.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:get/get.dart';

class CompositionController extends GetxController {
  List<Composition> compositionList = [];

  @override
  onInit() {
    fetchComposition();
    super.onInit();
  }

  fetchComposition() {
    fetchCompositionFromDatabase().then((value) {
      compositionList = value;
      update();
    });
  }
}
