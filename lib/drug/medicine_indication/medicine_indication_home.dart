import 'package:flutter/material.dart';
import 'package:flutter_application/drug/medicine_indication/medicine_indication_details.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:get/get.dart';

class medicine extends StatefulWidget {
  @override
  _medicineState createState() => _medicineState();
}

class _medicineState extends State<medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Search Medicine'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (itemBuilder, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => MedicineIndicationDetailsPage(
                      medicine: medicine_indications[index]));
                },
                child: Row(
                  children: [
                    Icon(Icons.drag_handle_outlined),
                    SizedBox(
                      width: Get.size.width * 0.02,
                    ),
                    Text(
                      medicine_indications[index]["composition"],
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 3.0,
              );
            },
            itemCount: medicine_indications.length),
      ),
    );
  }
}
