import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/utilities/constants.dart';

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

  Composition.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    indication = json["indication"];
    adultDose = json["adultDose"];
    childDose = json["childDose"];
    sideEffects = json["sideEffects"];
    pregnancyCategory = json["pregnancyCategory"];
  }
}

addUpdateCompositionToDatabase(Composition composition) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('composition').doc();

  composition.id = ref.id;
  await ref.set(
    composition.toJson(),
    SetOptions(merge: true),
  );
}

Future<List<Composition>> fetchCompositionFromDatabase() async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection(Collections.compositions)
      .get();

  final compositionsList = snapshot.docs.map((document) {
    return Composition.fromJson(document.data());
  }).toList();

  return compositionsList;
}
