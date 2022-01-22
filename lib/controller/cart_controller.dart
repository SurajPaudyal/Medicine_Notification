import 'package:flutter_application/models/cart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Cart> cartList = [];

  addCart(Cart cart) {
    addCartToDatabase(cart, false).then((value) {
      if (value.toLowerCase().contains("success")) {
        cartList.add(cart);
        update();
      }
    });
  }
}
