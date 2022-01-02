import 'package:flutter/material.dart';
import 'package:flutter_application/admin/bloodgroupdata/add_blood_group.dart';
import 'package:flutter_application/admin/category/add_category.dart';
import 'package:flutter_application/admin/composition/add_composition.dart';
import 'package:flutter_application/admin/emergencynumbers/add_emergency_numbers.dart';
import 'package:flutter_application/admin/medicine/add_medicine.dart';
import 'package:flutter_application/admin/supplements/add_supplements.dart';
import 'package:get/get.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key key}) : super(key: key);

  Widget individualCategoryTile(
      String title, IconData icon, VoidCallback ontap) {
    return SizedBox(
      height: Get.size.height * 0.2,
      width: Get.size.width,
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(20.0),
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon),
                SizedBox(
                  height: Get.size.height * 0.02,
                ),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Home page"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(120.0),
        child: Column(
          children: [
            individualCategoryTile("Category", Icons.dashboard, () {
              Get.to(() => AddCategoryPage());
            }),
            individualCategoryTile("Medicines", Icons.medical_services, () {
              Get.to(() => AddMedicinePage());
            }),
            individualCategoryTile("Suppliments", Icons.support_outlined, () {
              Get.to(() => AddSupplementPage());
            }),
            individualCategoryTile("Composition", Icons.wallet_giftcard, () {
              Get.to(() => AddCompositionPage());
            }),
            individualCategoryTile("Blood Group", Icons.bloodtype_outlined, () {
              Get.to(() => AddBloodGroupPage());
            }),
            individualCategoryTile(
                "Emergency Numbers", Icons.format_list_numbered_outlined, () {
              Get.to(() => AddEmergencyNumbersPage());
            }),
            individualCategoryTile("Messages", Icons.messenger_outline, () {
              Get.to(() => AddEmergencyNumbersPage());
            })
          ],
        ),
      ),
    );
  }
}
