import 'package:flutter_application/models/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/utilities/constants.dart';

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

  Category.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    picture = json["picture"];
    category = json["category"];
  }
}

addUpdateCategoryToDatabase(Category category) async {
  DocumentReference ref =
      await FirebaseFirestore.instance.collection('category').doc();

  category.id = ref.id;
  await ref.set(
    category.toJson(),
    SetOptions(merge: true),
  );
}

Future<List<Category>> fetchCategoryFromDatabase() async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection(Collections.category).get();

  final categoryList = snapshot.docs.map((document) {
    return Category.fromJson(document.data());
  }).toList();

  return categoryList;
}
