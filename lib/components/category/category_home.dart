import 'package:flutter/material.dart';
import 'package:flutter_application/components/category/category_list.dart';
import 'package:flutter_application/drug/all_medicine_list.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:flutter_application/utilities/utilities.dart';

class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  var product_list = [
    {
      "name": "Cardio",
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
    {
      "name": "Cholesterol",
      "picture": "images/cats/cholesterol.jpg",
    },
    {
      "name": "Painkiller",
      "picture": "images/cats/painkiller.jpg",
    },
    {
      "name": "Asthama",
      "picture": "images/cats/asthama.jpg",
    },
    {
      "name": "Cough",
      "picture": "images/cats/cough.jpg",
    },
    {
      "name": "Constipation",
      "picture": "images/cats/constipation.jpg",
    },
    {
      "name": "Wound",
      "picture": "images/cats/wound.jpg",
    },
    {
      "name": "Ear-Drop",
      "picture": "images/cats/eardrop.jpg",
    },
    {
      "name": "Enzyme-Digestion",
      "picture": "images/cats/enzymedigestion.jpg",
    },
    {
      "name": "Worm",
      "picture": "images/cats/worm.jpg",
    },
    {
      "name": "Calcium",
      "picture": "images/cats/calcium.jpg",
    },
    {
      "name": "Thyroid",
      "picture": "images/cats/thyroid.jpg",
    },
    {
      "name": "Nasal",
      "picture": "images/cats/nasal.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AllMedicineList()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange, minimumSize: Size(200.0, 40.0)),
            child: Text(
              "Show all Medicine",
            )),
        Expanded(
          child: GridView.builder(
              itemCount: product_list.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Single_cate(
                    cate_name: product_list[index]['name'],
                    cate_picture: product_list[index]['picture'],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class Single_cate extends StatelessWidget {
  final String cate_name;
  final String cate_picture;

  Single_cate({
    this.cate_name,
    this.cate_picture,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CategoryListPage(
                categoryName: cate_name,
                medicineList: allMedicineList_on_the_cart,
              ),
            ),
          ),
          child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          cate_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ],
                  )),
              child: Image.asset(
                cate_picture,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
