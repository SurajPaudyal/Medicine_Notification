import 'package:flutter/material.dart';
import 'package:flutter_application/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Medicine One",
      "picture": "images/products/medicine1.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Medicine Two",
      "picture": "images/products/medicine2.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Medicine Three",
      "picture": "images/products/medicine3.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Medicine Four",
      "picture": "images/products/medicine4.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Medicine Five",
      "picture": "images/products/medicine5.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Medicine Six",
      "picture": "images/products/medicine6.jpg",
      "old_price": 180,
      "price": 150,
    },
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
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
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
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
