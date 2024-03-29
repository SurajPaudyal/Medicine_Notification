import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/utilities/constants.dart';

class Users {
  String id;
  String name;
  String email;
  String phone;

  Users({this.id, this.name, this.email, this.phone});

  Users.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json["email"],
        phone = json["phone"];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
    };
  }
}

Future<String> createOrUpdateUserData(Users userDataMap) async {
  var user = await FirebaseAuth.instance.currentUser;
  userDataMap.id = user.uid;
  DocumentReference ref =
      FirebaseFirestore.instance.collection(Collections.users).doc(user.uid);
  await ref.set(
    userDataMap.toJson(),
    SetOptions(merge: true),
  );
  return "Signed In";
}

Future<Users> fetchCurrentUserInfoFromDatabase() async {
  var user = await FirebaseAuth.instance.currentUser;

  final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection(Collections.users);
  var userData = await _usersCollectionReference.doc(user.uid).get();
  if (userData.data() == null) return null;
  return Users.fromJson(userData.data());
}
