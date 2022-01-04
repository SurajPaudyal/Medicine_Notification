import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Category extends CategoryName {
  String category;

  Category({this.category});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["category"] = category;
    json["picture"] = picture;

    return json;
  }
}

addUpdateCategory(Category category) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('category').doc();

  category.id = ref.id;
  await ref.set(
    category.toJson(),
    SetOptions(merge: true),
  );
}
