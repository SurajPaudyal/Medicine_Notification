import 'package:flutter/material.dart';
import 'package:flutter_application/admin/supplements/add_supplements.dart';
import 'package:flutter_application/controller/supplements_controller.dart';
import 'package:flutter_application/models/products.dart';
import 'package:flutter_application/models/supplements.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:flutter_application/view/screens/pages/product_details.dart';
import 'package:get/get.dart';

class SupplementsPage extends StatefulWidget {
  @override
  _SupplementsPageState createState() => _SupplementsPageState();
}

class _SupplementsPageState extends State<SupplementsPage> {
  var controller = Get.put(SupplementsController());

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
    return GetBuilder<SupplementsController>(builder: (builder) {
      return GridView.builder(
          itemCount: Get.find<SupplementsController>().supplementsList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Single_prod(
                supplements:
                    Get.find<SupplementsController>().supplementsList[index],
              ),
            );
          });
    });
  }
}

class Single_prod extends StatelessWidget {
  final Supplements supplements;

  Single_prod({
    this.supplements,
  });

  decodeBase64() {}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => SupplementsDetails(
                        //Here We Are Passing The Value Of The Product To Product Details Page
                        supplements: supplements,
                      ))),
              onLongPress: () => Get.to(() => AddSupplementPage(
                    supplements: supplements,
                  )),
              child: GridTile(
                footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            supplements.name.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                        ),
                        Text(
                          "\$${supplements.price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Utilities.imageFromBase64String(supplements.picture),
              ),
            ),
          )),
    );
  }
}
