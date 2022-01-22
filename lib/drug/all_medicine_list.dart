import 'package:flutter/material.dart';
import 'package:flutter_application/controller/medicine_controller.dart';
import 'package:flutter_application/drug/medicine_indication/medicine_indication_home.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:get/get.dart';

class AllMedicineList extends StatefulWidget {
  AllMedicineList({
    key,
    medicine_detail_picture,
    medicine_detail_name,
  }) : super(key: key);

  String medicine_detail_picture;
  String medicine_detail_name;

  @override
  _AllMedicineListState createState() => _AllMedicineListState();
}

class _AllMedicineListState extends State<AllMedicineList> {
  var controller = Get.put(MedicineController());
  var searchedMedicineList = [].obs;

  // searchProduct(String name) {
  //   searchedMedicineList.value =
  //       allMedicineList_on_the_cart.where((element) => element["name"].contains()).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Medicine List"),
      ),
      body: Column(
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
          Expanded(
            child: ListView.builder(
                itemCount: allMedicineList_on_the_cart.length,
                //itemCount: Get.find<MedicineController>().medicineList.length,
                itemBuilder: (context, index) {
                  return Single_list_AllMedicineList(
                    //medicineList:
                    //Get.find<MedicineController>().medicineList[index],
                    list_med_name: allMedicineList_on_the_cart[index]["name"],
                    list_med_picture: allMedicineList_on_the_cart[index]
                        ["picture"],
                    list_med_company: allMedicineList_on_the_cart[index]
                        ["Company"],
                    list_med_price: allMedicineList_on_the_cart[index]["price"],
                    list_med_qty: allMedicineList_on_the_cart[index]
                        ["quantity"],
                    list_med_comp: allMedicineList_on_the_cart[index]
                        ["composition"],
                    list_med_cate: allMedicineList_on_the_cart[index]
                        ["category"],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Single_list_AllMedicineList extends StatelessWidget {
  var quantity = 1.obs;

  //final Medicine medicineList;
  //final Medicine medicine;
  final String list_med_name;
  final String list_med_picture;
  final int list_med_price;
  final String list_med_company;
  final int list_med_qty;
  final String list_med_comp;
  final String list_med_cate;

  Single_list_AllMedicineList({
    //this.medicineList,
    //this.medicine,
    this.list_med_name,
    this.list_med_picture,
    this.list_med_price,
    this.list_med_company,
    this.list_med_qty,
    this.list_med_comp,
    this.list_med_cate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//    ==============LEADING SECTION==============
        leading: new Image.asset(
          //medicine.picture,
          list_med_picture,
          width: 50.0,
          height: 150.0,
        ),
//    =============TITLE SECTION========
        //title: new Text(medicine.name),
        title: new Text(
          list_med_name,
          style: TextStyle(fontSize: 18.0),
        ),
//        =====SUBTITLE SECTION=============
        subtitle: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Composition: "),
                Expanded(
                    child: Text(
                  list_med_comp,
                  style: TextStyle(
                      color: Colors.red, overflow: TextOverflow.visible),
                ))
              ],
            ),
//          ROW INSIDE THE COLUMN
            Row(
//          THIS SECTION IS FOR THE COMPANY OF THE PRODUCT
              children: <Widget>[
                Text("Company: "),
                Expanded(
                  child: Text(
                    //medicine.companyName,
                    list_med_company,
                    style: TextStyle(color: Colors.red),
                    overflow: TextOverflow.visible,
                  ),
                ),
//                THIS SECTION IS FOR PRODUCT PRICE
              ],
            ),
            Row(
              children: <Widget>[
                Text("Category: "),
                Expanded(
                    child: Text(
                  list_med_cate,
                  style: TextStyle(
                      color: Colors.red, overflow: TextOverflow.visible),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Text("Price: "),
                Expanded(
                    child: Text(
                  (list_med_price).toString(),
                  style: TextStyle(
                      color: Colors.red, overflow: TextOverflow.visible),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                  ),
                ),
              ],
            )
          ],
        ),
        // trailing: SingleChildScrollView(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //       InkWell(
        //         child: Icon(Icons.arrow_drop_up),
        //         onTap: () {},
        //       ),
        //       //Text("$1"),
        //       InkWell(
        //         child: Icon(Icons.arrow_drop_down),
        //         onTap: () {},
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
