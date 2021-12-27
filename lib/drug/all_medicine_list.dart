import 'package:flutter/material.dart';
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
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                prefixIcon: Icon(Icons.search),
                label: Text("Search Medicine"),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: allMedicineList_on_the_cart.length,
                itemBuilder: (context, index) {
                  return Single_list_AllMedicineList(
                    list_med_name: allMedicineList_on_the_cart[index]["name"],
                    list_med_picture: allMedicineList_on_the_cart[index]
                        ["picture"],
                    list_med_company: allMedicineList_on_the_cart[index]
                        ["Company"],
                    list_med_price: allMedicineList_on_the_cart[index]["price"],
                    list_med_qty: allMedicineList_on_the_cart[index]
                        ["quantity"],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Single_list_AllMedicineList extends StatelessWidget {
  final String list_med_name;
  final String list_med_picture;
  final int list_med_price;
  final String list_med_company;
  final int list_med_qty;

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
        leading: new Image.asset(
          list_med_picture,
          width: 100.0,
          height: 150.0,
        ),
//    =============TITLE SECTION========
        title: new Text(list_med_name),
//        =====SUBTITLE SECTION=============
        subtitle: new Column(
          children: <Widget>[
//          ROW INSIDE THE COLUMN
            new Row(
//          THIS SECTION IS FOR THE COMPANY OF THE PRODUCT
              children: <Widget>[
                Text("Company: "),
                Expanded(
                  child: Text(
                    list_med_company,
                    style: TextStyle(color: Colors.red),
                    overflow: TextOverflow.visible,
                  ),
                ),
//                THIS SECTION IS FOR PRODUCT PRICE
              ],
            ),
          ],
        ),
        trailing: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                child: Icon(Icons.arrow_drop_up),
                onTap: () {},
              ),
              Text("$list_med_qty"),
              InkWell(
                child: Icon(Icons.arrow_drop_down),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
