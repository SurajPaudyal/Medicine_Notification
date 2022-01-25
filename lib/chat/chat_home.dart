// import 'package:appu_med_suppy/model/user_model.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:appu_med_suppy/utils/strings.dart';
// import 'package:appu_med_suppy/utils/chatroom_utils.dart';
// import 'package:appu_med_suppy/views/pages/chat/individual_chat_room.dart';

// class ChatHomePage extends StatefulWidget {
//   @override
//   _ChatHomePageState createState() => _ChatHomePageState();
// }

// class _ChatHomePageState extends State<ChatHomePage> {
//   List<User> userList = [];
//   List<User> searchedUserList = [];
//   TextEditingController searchController = TextEditingController();

//   Future<void> _moveTochatRoom(
//     selectedUserToken,
//     selectedUserID,
//     selectedUserName,
//   ) async {
//     try {
//       String chatID = makeChatId(Constants.userId, selectedUserID);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => IndividualChatRoomPage(
//             Constants.userId,
//             Constants.userData.pharName,
//             selectedUserToken,
//             selectedUserID,
//             chatID,
//             selectedUserName,
//           ),
//         ),
//       );
//     } catch (e) {
//       print(e.message);
//     }
//   }

//   // method to parse Document snapshot into model object
//   parseUser(List<QueryDocumentSnapshot> documents) {
//     userList = documents.map((document) {
//       return User.fromJson(document.data());
//     }).toList();
//   }

//   onSearchTextChanged(String text) async {
//     searchedUserList.clear();
//     if (text.isEmpty || text == '') {
//       //set state should be called to refresh the list after search text is cleared
//       if (this.mounted) {
//         setState(() {});
//       }
//       return;
//     }

//     userList.forEach((users) {
//       if (users.pharName.toLowerCase().contains(text.toLowerCase())) {
//         if (this.mounted) {
//           setState(() {
//             searchedUserList.add(users);
//           });
//         }
//       } else {
//         // to filter unfound data.. do not delete this
//         if (this.mounted) {
//           setState(() {});
//         }
//       }
//     });
//   }

//   // display search text field
//   Widget searchWidget(Size size) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//       child: Container(
//         height: size.height * 0.07,
//         width: size.width,
//         child: TextFormField(
//           controller: searchController,
//           decoration: new InputDecoration(
//             suffix: new IconButton(
//               padding: EdgeInsets.only(top: 20),
//               icon: new Icon(
//                 Icons.cancel,
//                 size: 19.5,
//               ),
//               onPressed: () {
//                 searchController.clear();
//                 onSearchTextChanged('');
//               },
//             ),
//             contentPadding: EdgeInsets.all(10),
//             labelText: "Search User",
//             hintText: "Search User",
//             border: new OutlineInputBorder(
//               borderSide: new BorderSide(width: 5),
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//             ),
//           ),
//           onChanged: onSearchTextChanged,
//         ),
//       ),
//     );
//   }

//   Widget buildListView(List<User> user) {
//     return ListView(
//         children: user.map((data) {
//       if (data.id == Constants.userId) {
//         return Container();
//       } else {
//         return StreamBuilder<QuerySnapshot>(
//             stream: FirebaseFirestore.instance
//                 .collection(Collections.users)
//                 .doc(Constants.userId)
//                 .collection(Collections.chatLists)
//                 .where('chatWith', isEqualTo: data.id)
//                 .snapshots(),
//             builder: (context, chatListSnapshot) {
//               return Card(
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.person,
//                     size: 35.0,
//                     color: Colors.blue[800],
//                   ),
//                   title: Text(data.pharName),
//                   subtitle: Text(
//                     (chatListSnapshot.hasData &&
//                             chatListSnapshot.data.docs.length > 0)
//                         ? chatListSnapshot.data.docs[0].data()['lastChat']
//                         : "No message yet!",
//                   ),
//                   trailing: Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 8, 4, 4),
//                       child: (chatListSnapshot.hasData &&
//                               chatListSnapshot.data.docs.length > 0)
//                           ? StreamBuilder<QuerySnapshot>(
//                               stream: FirebaseFirestore.instance
//                                   .collection(Collections.chatRooms)
//                                   .doc(chatListSnapshot.data.docs[0]
//                                       .data()['chatID'])
//                                   .collection(chatListSnapshot.data.docs[0]
//                                       .data()['chatID'])
//                                   .where('idTo', isEqualTo: Constants.userId)
//                                   .where('isread', isEqualTo: false)
//                                   .snapshots(),
//                               builder: (context, notReadMSGSnapshot) {
//                                 return Container(
//                                   width: 60,
//                                   height: 50,
//                                   child: Column(
//                                     children: <Widget>[
//                                       Text(
//                                         (chatListSnapshot.hasData &&
//                                                 chatListSnapshot
//                                                         .data.docs.length >
//                                                     0)
//                                             ? readTimestamp(chatListSnapshot
//                                                 .data.docs[0]
//                                                 .data()['timestamp'])
//                                             : '',
//                                         style: TextStyle(fontSize: 12),
//                                       ),
//                                       Padding(
//                                           padding: const EdgeInsets.fromLTRB(
//                                               0, 5, 0, 0),
//                                           child: CircleAvatar(
//                                             radius: 9,
//                                             child: Text(
//                                               (chatListSnapshot.hasData &&
//                                                       chatListSnapshot.data.docs
//                                                               .length >
//                                                           0)
//                                                   ? ((notReadMSGSnapshot
//                                                               .hasData &&
//                                                           notReadMSGSnapshot
//                                                                   .data
//                                                                   .docs
//                                                                   .length >
//                                                               0)
//                                                       ? '${notReadMSGSnapshot.data.docs.length}'
//                                                       : '')
//                                                   : '',
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                             backgroundColor:
//                                                 (notReadMSGSnapshot.hasData &&
//                                                         notReadMSGSnapshot.data
//                                                                 .docs.length >
//                                                             0 &&
//                                                         notReadMSGSnapshot
//                                                             .hasData &&
//                                                         notReadMSGSnapshot.data
//                                                                 .docs.length >
//                                                             0)
//                                                     ? Colors.red[400]
//                                                     : Colors.transparent,
//                                             foregroundColor: Colors.white,
//                                           )),
//                                     ],
//                                   ),
//                                 );
//                               })
//                           : Text('')),
//                   onTap: () {
//                     _moveTochatRoom(
//                       data.userToken,
//                       data.id,
//                       data.pharName,
//                     );
//                   },
//                 ),
//               );
//             });
//       }
//     }).toList());
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Constants.userData != null
//           ? Column(
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.all(10.0),
//                   height: size.height * 0.07,
//                   child: Text(
//                     "Chat Page",
//                     style: TextStyle(fontSize: 18.0),
//                   ),
//                 ),
//                 Constants.userData.cusType == 1
//                     ? searchWidget(size)
//                     : SizedBox(),
//                 Flexible(
//                   child: StreamBuilder<QuerySnapshot>(
//                     stream: FirebaseFirestore.instance
//                         .collection(Collections.users)
//                         .where("cusType",
//                             isEqualTo: Constants.userData.cusType == 0 ? 1 : 0)
//                         .snapshots(),
//                     builder: (context, snapshot) {
//                       if (!snapshot.hasData)
//                         return Container(
//                           child: Center(
//                             child: CircularProgressIndicator(),
//                           ),
//                           color: Colors.white.withOpacity(0.7),
//                         );
//                       parseUser(snapshot.data.docs);
//                       return userList.length > 0
//                           ? searchedUserList.length > 0
//                               ? buildListView(searchedUserList)
//                               : buildListView(userList)
//                           : Container(
//                               child: Center(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Icon(
//                                       Icons.forum,
//                                       color: Colors.grey[700],
//                                       size: 64,
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(10.0),
//                                       child: Text(
//                                         'No Users.',
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.grey[700]),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                     },
//                   ),
//                 ),
//               ],
//             )
//           : Center(
//               child: CircularProgressIndicator(),
//             ),
//     );
//   }
// }
