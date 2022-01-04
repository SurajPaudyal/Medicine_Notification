import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BloodGroupModel extends BloodGroup {
  String type;

  BloodGroupModel({this.type});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["name"] = name;
    json["location"] = location;
    json["phone"] = phone;
    json["type"] = type;

    return json;
  }
}

addUpdateType(BloodGroupModel type) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('type').doc();

  type.id = ref.id;
  await ref.set(
    type.toJson(),
    SetOptions(merge: true),
  );
}
