import 'package:flutter/material.dart';

class Ordered_Cart_products extends StatefulWidget {
  @override
  _Ordered_Cart_productsState createState() => _Ordered_Cart_productsState();
}

class _Ordered_Cart_productsState extends State<Ordered_Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Medicine One",
      "picture": "images/products/medicine1.jpg",
      "price": 100,
      "size": "M",
      "quantity": 1,
    },
    {
      "name": "Medicine Two",
      "picture": "images/products/medicine2.jpg",
      "price": 120,
      "size": "10's",
      "quantity": 1,
    },
    {
      "name": "Medicine Three",
      "picture": "images/products/medicine3.jpg",
      "price": 180,
      "size": "M",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Single_cart_products(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_qty: Products_on_the_cart[index]["qty"],
          );
        });
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_qty;

  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//    ==============LEADING SECTION==============
        leading: Image.asset(
          cart_prod_picture,
          width: 60.0,
          height: 60.0,
        ),
//    =============TITLE SECTION========
        title: Text(cart_prod_name),
//        =====SUBTITLE SECTION=============
        subtitle: Column(
          children: <Widget>[
//          ROW INSIDE THE COLUMN
            Row(
//          THIS SECTION IS FOR THE SIZE OF THE PRODUCT
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Quantity: \$${cart_prod_qty}",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
//                THIS SECTION IS FOR PRODUCT PRICE
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "   Total Price: \$${cart_prod_price}",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
