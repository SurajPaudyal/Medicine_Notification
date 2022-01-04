import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/models/products.dart';

class Medicine extends Products {
  String composition;

  Medicine({this.composition});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["name"] = name;
    json["companyName"] = companyName;
    json["picture"] = picture;
    json["price"] = price;
    json["composition"] = composition;

    return json;
  }
}

addUpdateMedicine(Medicine medicine) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('medicines').doc();
  medicine.id = ref.id;
  await ref.set(
    medicine.toJson(),
    SetOptions(merge: true),
  );
}
