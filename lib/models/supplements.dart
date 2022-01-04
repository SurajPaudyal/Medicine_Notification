import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Supplements extends Products {
  String details;

  Supplements({this.details});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["name"] = name;
    json["companyName"] = companyName;
    json["picture"] = picture;
    json["price"] = price;
    json["details"] = details;

    return json;
  }
}

addUpdateSupplement(Supplements suppliment) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('supplements').doc();

  suppliment.id = ref.id;
  await ref.set(
    suppliment.toJson(),
    SetOptions(merge: true),
  );
}
