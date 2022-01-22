import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Composition extends GenericName {
  String composition;

  Composition({this.composition});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["composition"] = composition;
    json["indication"] = indication;
    json["adultDose"] = adultDose;
    json["childDose"] = childDose;
    json["sideEffects"] = sideEffects;
    json["pregnancyCategory"] = pregnancyCategory;

    return json;
  }
}

addUpdateComposition(Composition composition) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('composition').doc();

  composition.id = ref.id;
  await ref.set(
    composition.toJson(),
    SetOptions(merge: true),
  );
}
