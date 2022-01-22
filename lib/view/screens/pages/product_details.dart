import 'package:flutter/material.dart';
import 'package:flutter_application/components/supplements_page.dart';
import 'package:flutter_application/controller/cart_controller.dart';
import 'package:flutter_application/models/cart.dart';
import 'package:flutter_application/models/supplements.dart';
import 'package:flutter_application/shop_home_page.dart';
import 'package:flutter_application/utilities/constants.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:get/get.dart';

class SupplementsDetails extends StatefulWidget {
  final Supplements supplements;

  SupplementsDetails({
    this.supplements,
  });

  @override
  _SupplementsDetailsState createState() => _SupplementsDetailsState();
}

class _SupplementsDetailsState extends State<SupplementsDetails> {
  var controller = Get.put(CartController());

  var quantity = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new ShopHomePage()));
            },
            child: Text('Sushant Pharmacy')),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Utilities.imageFromBase64String(
                      widget.supplements.picture),
                ),
                footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(
                        widget.supplements.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text(
                              "\$${widget.supplements.price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ))),
          ),

//        ========= THE FIRST BUTTONS==========
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  if (quantity > 0) quantity = quantity - 1;
                },
                child: Icon(Icons.remove),
              ),
              Obx(
                () => Text(quantity.toString()),
              ),
              InkWell(
                onTap: () {
                  quantity = quantity + 1;
                },
                child: Icon(Icons.add),
              ),
            ],
          ),

//          =========== THE SECOND BUTTON========
          Row(
            children: <Widget>[
//              ====== THE SIZE BUTTON=======
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy Now")),
              ),
              new IconButton(
                  onPressed: () {
                    Cart cart = Cart();
                    cart.productId = widget.supplements.id;
                    cart.productType = ProductType.supplements;
                    cart.companyName = widget.supplements.companyName;
                    cart.checkout = 0;
                    cart.image = widget.supplements.picture;
                    cart.name = widget.supplements.name;
                    cart.price =
                        double.parse(widget.supplements.price.toString());
                    cart.totalAmount = cart.price * quantity.value;
                    cart.quantity = quantity.value;
                    cart.createdAt = DateTime.now().toString();
                    cart.updatedAt = DateTime.now().toString();
                    Get.find<CartController>().addCart(cart);
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  )),
            ],
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.supplements.name)),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.supplements.companyName.toString())),
            ],
          ),
          Divider(),

          new ListTile(
            title: new Text(
              "Product Details",
              style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),
            ),
            subtitle: new Text(widget.supplements.details),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: new Text(
              "Similar Products",
            ),
          ),
//          SIMILAR PRODUCTS SECTION
          Container(
            height: 240.0,
            child: SupplementsPage(),
          )
        ],
      ),
    );
  }
}

// class Similar_products extends StatefulWidget {
//   @override
//   _Similar_productsState createState() => _Similar_productsState();
// }

// class _Similar_productsState extends State<Similar_products> {
//   var product_list = [
//     {
//       "name": "Medicine One",
//       "picture": "images/products/medicine1.jpg",
//       "old_price": 120,
//       "price": 100,
//     },
//     {
//       "name": "Medicine Two",
//       "picture": "images/products/medicine2.jpg",
//       "old_price": 180,
//       "price": 150,
//     },
//     {
//       "name": "Medicine Three",
//       "picture": "images/products/medicine3.jpg",
//       "old_price": 120,
//       "price": 100,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: product_list.length,
//         gridDelegate:
//             new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: EdgeInsets.all(4.0),
//             child: Similar_Single_prod(
//               prod_name: product_list[index]['name'],
//               prod_picture: product_list[index]['picture'],
//               prod_old_price: product_list[index]['old_price'],
//               prod_price: product_list[index]['price'],
//             ),
//           );
//         });
//   }
// }

// class Similar_Single_prod extends StatelessWidget {
//   final prod_name;
//   final prod_picture;
//   final prod_old_price;
//   final prod_price;

//   Similar_Single_prod({
//     this.prod_name,
//     this.prod_picture,
//     this.prod_old_price,
//     this.prod_price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//           tag: new Text("Hero"),
//           child: Material(
//             child: InkWell(
//               onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                   builder: (context) => new ProductDetails(
//                         //Here We Are Passing The Value Of The Product To Product Details Page
//                         product_detail_name: prod_name,
//                         product_detail_new_price: prod_price,
//                         product_detail_old_price: prod_old_price,
//                         product_detail_picture: prod_picture,
//                       ))),
//               child: GridTile(
//                   footer: Container(
//                       color: Colors.white,
//                       child: new Row(
//                         children: <Widget>[
//                           Expanded(
//                             child: new Text(
//                               prod_name,
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 16.0),
//                             ),
//                           ),
//                           new Text(
//                             "\$${prod_price}",
//                             style: TextStyle(
//                                 color: Colors.red, fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       )),
//                   child: Image.asset(
//                     prod_picture,
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }
