import 'package:flutter_application/models/users.dart';
import 'package:flutter_application/utilities/constants.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  @override
  onInit() {
    fetchUser();
    super.onInit();
  }

  fetchUser() {
    fetchCurrentUserInfoFromDatabase().then((value) {
      if (value != null) {
        Constants.userData = value;
        Constants.userId = value.id;
      }
    });
  }
}
