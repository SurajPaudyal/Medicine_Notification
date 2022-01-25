import 'package:flutter/material.dart';
import 'package:flutter_application/controller/cart_controller.dart';
import 'package:get/get.dart';

class WishListCartPage extends StatefulWidget {
  @override
  _WishListCartPageState createState() => _WishListCartPageState();
}

class _WishListCartPageState extends State<WishListCartPage> {
  var controller = Get.put(CartController());

  final List myProducts = List.generate(10, (index) {
    return {"id": index, "title": "Product \#$index", "price": index + 1};
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.deepOrange,
          title: Text('Wish List'),
          actions: <Widget>[
            new IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: Get.find<CartController>().cartList.length,
            itemBuilder: (BuildContext ctx, index) {
              // Display the list item
              return GetBuilder<CartController>(builder: (builder) {
                return Dismissible(
                  key: UniqueKey(),

                  // only allows the user swipe from right to left
                  direction: DismissDirection.endToStart,

                  // Remove this product from the list
                  // In production enviroment, you may want to send some request to delete it on server side
                  onDismissed: (_) {
                    // Get.find<CartController>().cartList.removeAt(index);
                    Get.find<CartController>()
                        .removeCart(Get.find<CartController>().cartList[index]);
                  },

                  // Display item's title, price..
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(Get.find<CartController>()
                              .cartList[index]
                              .toString()),
                        ),
                        title: Text(Get.find<CartController>()
                            .cartList[index]
                            .name
                            .toString()),
                        subtitle: Text("Total: "
                            "\$${Get.find<CartController>().cartList[index].totalAmount.toString()}"),
                        trailing: Icon(Icons.arrow_back),
                        onLongPress: () {
                          setState(() {});
                        },
                      )),

                  // This will show up when the user performs dismissal action
                  // It is a red background and a trash icon
                  background: Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                );
              });
            },
          ),
        ));
  }
}
