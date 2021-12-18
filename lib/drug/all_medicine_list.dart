import 'package:flutter/material.dart';

class AllMedicineList extends StatefulWidget {
  const AllMedicineList({key, medicine_detail_picture, medicine_detail_name}) : super(key: key);

  @override
  _AllMedicineListState createState() => _AllMedicineListState();
}

class _AllMedicineListState extends State<AllMedicineList> {
  var AllMedicineList_on_the_cart = [
    {
      "name": "Sinex",
      "picture": "assets/medicineimages/Sinex.jpg",
      "price": 30,
      "Company": "Time Pharmaceuticals",
      "quantity": 1,
    },
    {
      "name": "Sancho",
      "picture": "assets/medicineimages/Sancho.jpg",
      "price": 40,
      "Company": "Nepal Arurvedic ausadhalaya",
      "quantity": 1,
    },
    {
      "name": "Nims",
      "picture": "assets/medicineimages/Nims.jpg",
      "price": 42,
      "Company": "Asian Pharmaceuticals",
      "quantity": 1,
    },
    {
      "name": "De-Cold",
      "picture": "assets/medicineimages/Decold.jpg",
      "price": 30,
      "Company": "Lomus Pharmaceuticals",
      "quantity": 1,
    },
    {
      "name": "TusQDx",
      "picture": "assets/medicineimages/TusQD.png",
      "price": 141,
      "Company": "Blue Cross Laboratories ",
      "quantity": 1,
    },
    {
      "name": "Rhinex",
      "picture": "assets/medicineimages/Rhinex.jpg",
      "price": 30,
      "Company": "Simca Pharmaceuticals",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Single_list_AllMedicineList(
            list_med_name: AllMedicineList_on_the_cart[index]["name"],
            list_med_picture: AllMedicineList_on_the_cart[index]["picture"],
            list_med_company: AllMedicineList_on_the_cart[index]["Company"],
            list_med_price: AllMedicineList_on_the_cart[index]["price"],
            list_med_qty: AllMedicineList_on_the_cart[index]["qty"],
          );
        });
  }
}

class Single_list_AllMedicineList extends StatelessWidget {
  final list_med_name;
  final list_med_picture;
  final list_med_price;
  final list_med_company;
  final list_med_qty;

  Single_list_AllMedicineList({
    this.list_med_name,
    this.list_med_picture,
    this.list_med_price,
    this.list_med_company,
    this.list_med_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//    ==============LEADING SECTION==============
        leading: new Image.asset(list_med_picture, width: 100.0, height: 150.0,),
//    =============TITLE SECTION========
        title: new Text(list_med_name),
//        =====SUBTITLE SECTION=============
        subtitle: new Column(
          children: <Widget>[
//          ROW INSIDE THE COLUMN
            new Row(
//          THIS SECTION IS FOR THE COMPANY OF THE PRODUCT
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Company:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    list_med_company,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
//                THIS SECTION IS FOR PRODUCT PRICE

              ],
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}, ),
            new Text("$list_med_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}, )
          ],
        ),
      ),
    );
  }
}
