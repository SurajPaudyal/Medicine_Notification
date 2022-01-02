import 'package:flutter/material.dart';
import 'package:flutter_application/models/products.dart';
import 'package:flutter_application/pages/product_details.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  var product_list = [
    Products(
      id: 1.toString(),
      name: "Medicine One",
      picture: "images/products/medicine1.jpg",
      price: 120.toString(),
    ),
    Products(
      id: 2.toString(),
      name: "Medicine Two",
      picture: "images/products/medicine2.jpg",
      price: 180.toString(),
    ),
    Products(
      id: 3.toString(),
      name: "Medicine Three",
      picture: "images/products/medicine3.jpg",
      price: 180.toString(),
    ),
    Products(
      id: 4.toString(),
      name: "Medicine Four",
      picture: "images/products/medicine4.jpg",
      price: 180.toString(),
    ),
    Products(
      id: 5.toString(),
      name: "Medicine Five",
      picture: "images/products/medicine5.jpg",
      price: 180.toString(),
    ),
    Products(
      id: 6.toString(),
      name: "Medicine Six",
      picture: "images/products/medicine6.jpg",
      price: 180.toString(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index].name,
              prod_picture: product_list[index].picture,
              prod_price: product_list[index].price,
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;

  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //Here We Are Passing The Value Of The Product To Product Details Page
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          new Text(
                            "\$${prod_price}",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
