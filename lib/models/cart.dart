import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/utilities/constants.dart';

class Cart {
  String id;
  String productId;
  String productType;
  String name;
  String companyName;
  double price;
  String image;
  int quantity;
  double totalAmount;
  int checkout;
  String createdAt;
  String updatedAt;

  Cart(
      {this.id,
      this.productId,
      this.productType,
      this.name,
      this.companyName,
      this.price,
      this.image,
      this.quantity,
      this.totalAmount,
      this.checkout,
      this.createdAt,
      this.updatedAt});

  Cart.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        productId = json['productId'],
        productType = json['productType'],
        name = json['name'],
        companyName = json['companyName'],
        price = json['price'].toDouble(),
        image = json['image'],
        quantity = json['quantity'],
        totalAmount = json['totalAmount'],
        checkout = json['checkout'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'productType': productType,
      'brandName': name,
      'companyName': companyName,
      'price': price,
      'image': image,
      'quantity': quantity,
      'totalAmount': totalAmount,
      'checkout': checkout,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}

getAllCart() async {}

//for both add and edit
Future<String> addCartToDatabase(Cart cart, bool update) async {
  CollectionReference cartReference = FirebaseFirestore.instance
      .collection(Collections.users)
      .doc(Constants.userId)
      .collection(Collections.carts);

  if (update) {
    // if edit
    cart.updatedAt = DateTime.now().toString();
    try {
      // updating in database
      await cartReference
          .doc(cart.id)
          .update(cart.toJson())
          .catchError((onError) {
        print(onError);
        return "Error uploading.. Try again later";
      });
      print("Successfully updated cart with id : ${cart.id}");
      return "Successfully updated cart";
    } catch (e) {
      return e.message;
    }
  } else {
    // if add
    cart.createdAt = DateTime.now().toString();
    cart.updatedAt = DateTime.now().toString();
    try {
      DocumentReference documentReference =
          await cartReference.add(cart.toJson());

      cart.id = documentReference.id;
      //adding in database
      await documentReference
          .set(cart.toJson(), SetOptions(merge: true))
          .catchError((onError) {
        print(onError);
        return "Error uploading.. Try again later";
      });
      print("Successfully added new cart in database");
      return "Successfully added to cart";
    } catch (e) {
      return e.message;
    }
  }
}

Future<String> deleteCartFromDatabase(String cartId) async {
  try {
    await FirebaseFirestore.instance
        .collection(Collections.users)
        .doc(Constants.userId)
        .collection(Collections.carts)
        .doc(cartId)
        .delete();
    return "Product removed from cart success";
  } catch (e) {
    print(e);
    return "Error removing product";
  }
}
