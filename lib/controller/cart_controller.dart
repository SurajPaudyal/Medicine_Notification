import 'package:flutter_application/models/cart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Cart> cartList = [];

  @override
  onInit() {
    fetchCart();
    super.onInit();
  }

  addCart(Cart cart) {
    addCartToDatabase(cart, false).then((value) {
      if (value.toLowerCase().contains("success")) {
        cartList.add(cart);
        update();
      }
    });
  }

  fetchCart() {
    fetchCartFromDatabase().then((value) {
      cartList = value;
      update();
    });
  }

  removeCart(Cart cart) {
    deleteCartFromDatabase(cart.id).then((value) {
      if (value.toLowerCase().contains("success")) {
        cartList.remove(cart);
        update();
      }
    });
  }
}
