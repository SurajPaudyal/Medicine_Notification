import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/models/products.dart';
import 'package:flutter_application/utilities/constants.dart';

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
    json["category"] = category;

    return json;
  }

  Medicine.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    companyName = json["companyName"];
    picture = json["picture"];
    price = json["price"];
    details = json["details"];
    category = json["category"];
    composition = json["composition"];
  }
}

addMedicineToDatabase(Medicine medicine) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('medicines').doc();

  medicine.id = ref.id;
  await ref.set(
    medicine.toJson(),
    SetOptions(merge: true),
  );
}

Future<String> updateMedicineToDatabase(Medicine medicines) async {
  CollectionReference ref =
      await FirebaseFirestore.instance.collection(Collections.medicines);

  try {
    // updating in database
    await ref
        .doc(medicines.id)
        .update(medicines.toJson())
        .catchError((onError) {
      print(onError);
      return "Error uploading.. Try again later";
    });
    print("Successfully updated supplements with id : ${medicines.id}");
    return "Successfully updated supplements";
  } catch (e) {
    return e.message;
  }
}

Future<List<Medicine>> fetchMedicineFromDatabase() async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection(Collections.medicines).get();

  final medicineList = snapshot.docs.map((document) {
    return Medicine.fromJson(document.data());
  }).toList();

  return medicineList;
}
