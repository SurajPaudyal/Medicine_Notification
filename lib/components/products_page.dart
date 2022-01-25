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
      name: "Protine-X",
      picture: "assets/supplementimages/protineX.jpg",
      price: 952.toString(),
    ),
    Products(
      id: 2.toString(),
      name: "Groviva",
      picture: "assets/supplementimages/groviva.jpg",
      price: 1182.toString(),
    ),
    Products(
      id: 3.toString(),
      name: "Pediasure",
      picture: "assets/supplementimages/pediasure.jpeg",
      price: 918.toString(),
    ),
    Products(
      id: 4.toString(),
      name: "Max-vida",
      picture: "assets/supplementimages/maxvida.jpg",
      price: 1076.toString(),
    ),
    Products(
      id: 5.toString(),
      name: "Lactogen",
      picture: "assets/supplementimages/lactogen.jpg",
      price: 709.toString(),
    ),
    Products(
      id: 6.toString(),
      name: "Farex 2",
      picture: "assets/supplementimages/farex.jpeg",
      price: 1140.toString(),
    ),
    Products(
      id: 7.toString(),
      name: "Ceregrow",
      picture: "assets/supplementimages/ceregrow.jpg",
      price: 1140.toString(),
    ),
    Products(
      id: 8.toString(),
      name: "Farex-1",
      picture: "assets/supplementimages/farex1.png",
      price: 1140.toString(),
    ),
    Products(
      id: 9.toString(),
      name: "Lactodex-1",
      picture: "assets/supplementimages/lactodex.jpg",
      price: 1140.toString(),
    ),
    Products(
      id: 10.toString(),
      name: "Cerelac-1",
      picture: "assets/supplementimages/cerelac1.jpg",
      price: 1140.toString(),
    ),
    Products(
      id: 11.toString(),
      name: "Mask",
      picture: "assets/supplementimages/dochem.jpg",
      price: 1140.toString(),
    ),
    Products(
      id: 12.toString(),
      name: "Diaper",
      picture: "assets/supplementimages/mamypoko.jpg",
      price: 1140.toString(),
    ),
    Products(
      id: 13.toString(),
      name: "Similac-1",
      picture: "assets/supplementimages/similac1.png",
      price: 1140.toString(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
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
