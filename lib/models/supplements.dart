import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/utilities/constants.dart';

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

  Supplements.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    companyName = json["companyName"];
    picture = json["picture"];
    price = json["price"];
    details = json["details"];
  }
}

addSupplementToDatabase(Supplements suppliment) async {
  DocumentReference ref = await FirebaseFirestore.instance
      .collection(Collections.supplements)
      .doc();

  suppliment.id = ref.id;
  await ref.set(
    suppliment.toJson(),
    SetOptions(merge: true),
  );
}

Future<String> updateSupplementToDatabase(Supplements supplements) async {
  CollectionReference ref =
      await FirebaseFirestore.instance.collection(Collections.supplements);

  try {
    // updating in database
    await ref
        .doc(supplements.id)
        .update(supplements.toJson())
        .catchError((onError) {
      print(onError);
      return "Error uploading.. Try again later";
    });
    print("Successfully updated supplements with id : ${supplements.id}");
    return "Successfully updated supplements";
  } catch (e) {
    return e.message;
  }
}

Future<List<Supplements>> fetchSupplementsFromDatabase() async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection(Collections.supplements)
      .get();

  final supplementsList = snapshot.docs.map((document) {
    return Supplements.fromJson(document.data());
  }).toList();

  return supplementsList;
}
