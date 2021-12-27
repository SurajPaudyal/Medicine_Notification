import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MedicineIndicationDetailsPage extends StatelessWidget {
  MedicineIndicationDetailsPage({Key key, @required this.medicine})
      : super(key: key);

  Map<String, dynamic> medicine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(medicine["composition"]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text("Indication"),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(medicine["indication"]),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Adult Dose"),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(medicine["adult_dose"]),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Child Dose"),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(medicine["child_dose"]),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Pregnancy Category"),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(medicine["pregnancy_category"]),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Side Effect"),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(medicine["side_effect"]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
