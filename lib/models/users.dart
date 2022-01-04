import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String id;
  String name;
  String email;
  String phone;

  Users({this.id, this.name, this.email, this.phone});

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
      FirebaseFirestore.instance.collection('users').doc(user.uid);
  await ref.set(
    userDataMap.toJson(),
    SetOptions(merge: true),
  );
  return "Signed In";
}
