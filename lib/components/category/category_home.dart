import 'package:flutter/material.dart';
import 'package:flutter_application/components/category/category_list.dart';
import 'package:flutter_application/controller/medicine_controller.dart';
import 'package:flutter_application/drug/all_medicine_list.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:flutter_application/drug/medicine_indication/medicine_indication_home.dart';
import 'package:flutter_application/view/screens/pages/product_details.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  // var controller = Get.put(MedicineController());

  var product_list = [
    {
      "name": "Anti-Hypertensives",
      "picture": "images/cats/Anti-Hypertensives.jpg",
    },
    {
      "name": "Anti-Diabetics",
      "picture": "images/cats/Anti-Diabetics.jpg",
    },
    {
      "name": "Peptic-Ulcer-and-Gerd",
      "picture": "images/cats/Peptic-Ulcer-and-Gerd.jpeg",
    },
    {
      "name": "Minerals-and-Vitamins",
      "picture": "images/cats/Minerals-and-Vitamins.jpg",
    },
    {
      "name": "Antibiotic",
      "picture": "images/cats/Antibiotics.jpg",
    },
    {
      "name": "Opthalmic",
      "picture": "images/cats/Opthalmic.jpg",
    },
    {
      "name": "Anti-Fungal",
      "picture": "images/cats/Anti-Fungal.png",
    },
    {
      "name": "General-Medicine",
      "picture": "images/cats/General-Medicine.png",
    },
    {
      "name": "Anti-Allergies",
      "picture": "images/cats/Anti-Allergies.jpg",
    },
    {
      "name": "Lipid-Lowering-Agents",
      "picture": "images/cats/Lipid-Lowering-Agents.jpg",
    },
    {
      "name": "Analgesics",
      "picture": "images/cats/Analgesics.png",
    },
    {
      "name": "Anti-Asthmatic",
      "picture": "images/cats/Anti-Asthmatic.jpg",
    },
    {
      "name": "Cough-and-Cold",
      "picture": "images/cats/Cough-and-Cold.jpg",
    },
    {
      "name": "Laxatives",
      "picture": "images/cats/Laxatives.jpg",
    },
    {
      "name": "Ear-Drops",
      "picture": "images/cats/Ear-Drops.jpg",
    },
    {
      "name": "Digestive-Enzymes",
      "picture": "images/cats/Digestive-Enzymes.jpg",
    },
    {
      "name": "Thyrodism",
      "picture": "images/cats/Thyrodism.jpg",
    },
    {
      "name": "Nasal",
      "picture": "images/cats/Nasal.jpg",
    },
    {
      "name": "Anti-Cold",
      "picture": "images/cats/Anti-Cold.jpg",
    },
    {
      "name": "Diuretics",
      "picture": "images/cats/Diuretics.png",
    },
    {
      "name": "Pre-and-Probiotic",
      "picture": "images/cats/Pre-and-Probiotic.png",
    },
    {
      "name": "Anti-Platelet",
      "picture": "images/cats/Anti-Platelet.jpg",
    },
    {
      "name": "Urology-Medicine",
      "picture": "images/cats/Urology-Medicine.png",
    },
    {
      "name": "Anti-Coagulant",
      "picture": "images/cats/Anti-Coagulant.jpg",
    },
    {
      "name": "Neuropathic-Pain",
      "picture": "images/cats/Neuropathic-Pain.jpeg",
    },
    {
      "name": "Anti-Spasmodic",
      "picture": "images/cats/Anti-Spasmodic.jpeg",
    },
    {
      "name": "Anti-Fibrinolytic",
      "picture": "images/cats/Anti-Fibrinolytic.png",
    },
    {
      "name": "Anti-Depressants",
      "picture": "images/cats/Anti-Depressants.jpg",
    },
    {
      "name": "Anti-Emetic",
      "picture": "images/cats/Anti-Emetic.png",
    },
    {
      "name": "Anti-hyperuricemic",
      "picture": "images/cats/Anti-hyperuricemic.png",
    },
    {
      "name": "Dermatology-Medicine",
      "picture": "images/cats/Dermatology-Medicine.jpg",
    },
    {
      "name": "Anti-Psychotics",
      "picture": "images/cats/Anti-Psychotics.png",
    },
    {
      "name": "Anti-Convulsant",
      "picture": "images/cats/Anti-Convulsant.jpg",
    },
    {
      "name": "Benzodiazepines",
      "picture": "images/cats/Benzodiazepines.jpg",
    },
    {
      "name": "Alpha-blockers",
      "picture": "images/cats/Alpha-blockers.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              prefixIcon: Icon(Icons.search),
              label: Text("Search Medicine"),
            ),
          ),
        ),
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
              //itemCount: Get.find<MedicineController>().medicineList.length,
              itemCount: product_list.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Single_cate(
                    //medicineList:
                    //Get.find<MedicineController>().medicineList[index],
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
  //final Medicine medicineList;
  //final Medicine medicine;
  final String cate_name;
  final String cate_picture;

  Single_cate({
    //  this.medicineList,
    //  this.medicine,
    this.cate_name,
    this.cate_picture,
  });

  decodeBase64() {}

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Material(
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryListPage(
              categoryName: cate_name,
              //categoryName: medicine.category,
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
                        //medicine.name,
                        cate_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.0),
                      ),
                    ),
                  ],
                )),
            //child: Utilities.imageFromBase64String(medicine.picture),
            child: Image.asset(
              cate_picture,
              fit: BoxFit.cover,
            )),
      ),
    ));
  }
}
