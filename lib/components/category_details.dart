import 'package:flutter/material.dart';
import 'package:flutter_application/drug/all_medicine_list.dart';

class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  var product_list = [
    {
      "name": " Cardio",
      "picture": "images/cats/cardio.jpg",
    },
    {
      "name": "Diabetic",
      "picture": "images/cats/diabetic.jpg",
    },
    {
      "name": "Gastric",
      "picture": "images/cats/gastric.jpeg",
    },
    {
      "name": "Vitamins",
      "picture": "images/cats/vitamins.jpg",
    },
    {
      "name": "Antibiotic",
      "picture": "images/cats/antibiotics.jpg",
    },
    {
      "name": "Ophthalmic",
      "picture": "images/cats/opthalmic.jpg",
    },
    {
      "name": "Baby Products",
      "picture": "images/cats/babyproducts.jpg",
    },
    {
      "name": "Anti-Fungal",
      "picture": "images/cats/antifungal.jpg",
    },
    {
      "name": "General Medicine",
      "picture": "images/cats/generalmedicine.png",
    },
    {
      "name": "Allergy/Rashes",
      "picture": "images/cats/allergy.jpg",
    },
    {
      "name": "Supplements",
      "picture": "images/cats/suppliment.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_cate(
              cate_name: product_list[index]['name'],
              cate_picture: product_list[index]['picture'],
            ),
          );
        });
  }
}

class Single_cate extends StatelessWidget {
  final cate_name;
  final cate_picture;

  Single_cate({
    this.cate_name,
    this.cate_picture,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new AllMedicineList(
                    //Here We Are Passing The Value Of The Product To Product Details Page
                    medicine_detail_name: cate_name,
                    medicine_detail_picture: cate_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text(cate_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                          ),
                        ],
                      )
                  ),
                  child: Image.asset(
                    cate_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
