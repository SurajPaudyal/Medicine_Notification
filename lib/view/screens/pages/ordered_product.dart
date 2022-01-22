import 'package:flutter/material.dart';
import 'package:flutter_application/components/cart_products.dart';

class OrderedProducts extends StatefulWidget {
  @override
  _OrderedProductsState createState() => _OrderedProductsState();
}

class _OrderedProductsState extends State<OrderedProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Ordered Products'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Ordered_Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text(
                "Total Bought:",
              ),
              subtitle: Text("\$230"),
            )),
          ],
        ),
      ),
    );
  }
}
