import 'package:flutter_application/controller/cart_controller.dart';
import 'package:flutter_application/controller/medicine_controller.dart';
import 'package:flutter_application/controller/supplements_controller.dart';
import 'package:flutter_application/controller/users_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController());
    Get.lazyPut(() => SupplementsController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => MedicineController());
  }
}
