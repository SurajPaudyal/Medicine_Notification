// import 'dart:async';
// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:appu_med_suppy/utils/chatroom_utils.dart';
// import 'package:appu_med_suppy/controller/firebaseController.dart';
// import 'package:appu_med_suppy/controller/notificationController.dart';
// import 'package:appu_med_suppy/utils/strings.dart';
// import 'package:appu_med_suppy/views/widgets/image_viewer.dart';
// import 'package:image_picker/image_picker.dart';

// class IndividualChatRoomPage extends StatefulWidget {
//   IndividualChatRoomPage(
//     this.myID,
//     this.myName,
//     this.selectedUserToken,
//     this.selectedUserID,
//     this.chatID,
//     this.selectedUserName,
//   );

//   final String myID;
//   final String myName;
//   final String selectedUserToken;
//   final String selectedUserID;
//   final String chatID;
//   final String selectedUserName;

//   @override
//   _IndividualChatRoomPageState createState() => _IndividualChatRoomPageState();
// }

// class _IndividualChatRoomPageState extends State<IndividualChatRoomPage> {
//   final TextEditingController _msgTextController = new TextEditingController();
//   String messageType = 'text';
//   bool _isLoading = false;

//   @override
//   void initState() {
//     setCurrentChatRoomID(widget.chatID);
//     FirebaseController.instanace.getUnreadMSGCount();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     setCurrentChatRoomID('none');
//     super.dispose();
//   }

//   pickImageFromGallery() async {
//     try {
//       final pickedFile = await ImagePicker().getImage(
//         source: ImageSource.gallery,
//         imageQuality: 50,
//       );
//       if (pickedFile != null) {
//         if (this.mounted) {
//           setState(() {
//             messageType = 'image';
//             _isLoading = true;
//           });
//         }
//         _saveUserImageToFirebaseStorage(File(pickedFile.path));
//       } else {
//         _showDialog('Pick Image error');
//       }
//     } catch (e) {
//       print(e);
//       _showDialog('Pick Image error');
//     }
//   }

//   pickImageFromCamera() async {
//     try {
//       final pickedFile = await ImagePicker().getImage(
//         source: ImageSource.camera,
//         imageQuality: 50,
//       );
//       if (pickedFile != null) {
//         if (this.mounted) {
//           setState(() {
//             messageType = 'image';
//             _isLoading = true;
//           });
//         }
//         _saveUserImageToFirebaseStorage(File(pickedFile.path));
//       } else {
//         _showDialog('Pick Image error');
//       }
//     } catch (e) {
//       print(e);
//       _showDialog('Pick Image error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.selectedUserName),
//         centerTitle: true,
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance
//               .collection(Collections.chatRooms)
//               .doc(widget.chatID)
//               .collection(widget.chatID)
//               .snapshots(),
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) return LinearProgressIndicator();
//             if (snapshot.hasData) {
//               for (var data in snapshot.data.docs) {
//                 if (data.data()['idTo'] == widget.myID) {
//                   if (data.reference != null) {
//                     FirebaseFirestore.instance
//                         .runTransaction((Transaction myTransaction) async {
//                       myTransaction.update(data.reference, {'isread': true});
//                     });
//                   }
//                 }
//               }
//             }
//             return Stack(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Expanded(
//                       child: ListView(
//                           reverse: true,
//                           shrinkWrap: true,
//                           padding: const EdgeInsets.fromLTRB(4.0, 10, 4, 10),
//                           children: snapshot.data.docs.reversed.map((data) {
//                             return data.data()['idFrom'] ==
//                                     widget.selectedUserID
//                                 ? _listItemOther(
//                                     context,
//                                     widget.selectedUserName,
//                                     data.data()['content'],
//                                     returnTimeStamp(data.data()['timestamp']),
//                                     data.data()['type'])
//                                 : _listItemMine(
//                                     context,
//                                     data.data()['content'],
//                                     returnTimeStamp(data.data()['timestamp']),
//                                     data.data()['isread'],
//                                     data.data()['type']);
//                           }).toList()),
//                     ),
//                     _buildTextComposer(),
//                   ],
//                 ),
//               ],
//             );
//           }),
//     );
//   }

//   Widget _listItemOther(BuildContext context, String name, String message,
//       String time, String type) {
//     final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.only(top: 4.0, left: 4.0),
//       child: Container(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(name),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
//                           child: Container(
//                             constraints:
//                                 BoxConstraints(maxWidth: size.width - 150),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[200],
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Padding(
//                               padding:
//                                   EdgeInsets.all(type == 'text' ? 10.0 : 0),
//                               child: Container(
//                                   child: type == 'text'
//                                       ? Text(
//                                           message,
//                                           style: TextStyle(color: Colors.black),
//                                         )
//                                       : _imageMessage(message)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 14.0, left: 4),
//                           child: Text(
//                             time,
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _listItemMine(BuildContext context, String message, String time,
//       bool isRead, String type) {
//     final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.only(top: 2.0, right: 8),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(bottom: 14.0, right: 2, left: 4),
//             child: Text(
//               isRead ? '' : '1',
//               style: TextStyle(fontSize: 12, color: Colors.yellow[900]),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 14.0, right: 4, left: 8),
//             child: Text(
//               time,
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
//                 child: Container(
//                   constraints:
//                       BoxConstraints(maxWidth: size.width - size.width * 0.26),
//                   decoration: BoxDecoration(
//                     color:
//                         type == 'text' ? Colors.green[700] : Colors.transparent,
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(type == 'text' ? 10.0 : 0),
//                     child: Container(
//                         child: type == 'text'
//                             ? Text(
//                                 message,
//                                 style: TextStyle(color: Colors.white),
//                               )
//                             : _imageMessage(message)),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _imageMessage(imageUrl) {
//     return Container(
//       width: 160,
//       height: 160,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => ImageViewerPage(imageUrl: imageUrl)));
//         },
//         child: Image.network(
//           imageUrl,
//           // errorBuilder: (context, error, stackTrace) {
//           //   return Image.asset(
//           //     "assets/images/logo.png",
//           //     width: 60,
//           //     height: 80,
//           //     fit: BoxFit.cover,
//           //   );
//           // },
//           width: 60,
//           height: 80,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }

//   Widget _buildTextComposer() {
//     return new IconTheme(
//       data: new IconThemeData(color: Theme.of(context).accentColor),
//       child: new Container(
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: new Row(
//           children: <Widget>[
//             new Container(
//               margin: new EdgeInsets.only(left: 2.0),
//               child: new IconButton(
//                   icon: new Icon(
//                     Icons.photo,
//                     color: Colors.cyan[900],
//                   ),
//                   onPressed: () {
//                     pickImageFromGallery();
//                   }),
//             ),
//             new Container(
//               margin: new EdgeInsets.only(left: 2.0, right: 2.0),
//               child: new IconButton(
//                   icon: new Icon(
//                     Icons.camera_alt,
//                     color: Colors.cyan[900],
//                   ),
//                   onPressed: () {
//                     pickImageFromCamera();
//                   }),
//             ),
//             new Flexible(
//               child: new TextField(
//                 smartDashesType: SmartDashesType.enabled,
//                 controller: _msgTextController,
//                 onSubmitted: _handleSubmitted,
//                 maxLines: null,
//                 enableInteractiveSelection: true,
//                 enableSuggestions: true,
//                 showCursor: true,
//                 cursorColor: Colors.blue[800],
//                 decoration: new InputDecoration(
//                   contentPadding: EdgeInsets.all(10.0),
//                   filled: true,
//                   fillColor: Colors.grey[300],
//                   hintText: "Send a message",
//                   enabledBorder: OutlineInputBorder(
//                     gapPadding: 5.0,
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(
//                       color: Colors.black26,
//                       width: 1,
//                     ),
//                   ),
//                   border: OutlineInputBorder(
//                     gapPadding: 5.0,
//                     borderRadius: BorderRadius.circular(20.0),
//                     borderSide: BorderSide(
//                       color: Colors.black26,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             new Container(
//               margin: new EdgeInsets.symmetric(horizontal: 2.0),
//               child: new IconButton(
//                   icon: new Icon(Icons.send),
//                   onPressed: () {
//                     if (this.mounted) {
//                       setState(() {
//                         messageType = 'text';
//                       });
//                     }
//                     _handleSubmitted(_msgTextController.text);
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _saveUserImageToFirebaseStorage(imageFile) async {
//     try {
//       String takeImageURL = await FirebaseController.instanace
//           .sendImageToUserInChatRoom(imageFile, widget.chatID);
//       print(takeImageURL);
//       _handleSubmitted(takeImageURL);
//     } catch (e) {
//       _showDialog('Error add user image to storage');
//     }
//   }

//   Future<void> _handleSubmitted(String text) async {
//     try {
//       _resetTextFieldAndLoading();

//       if (this.mounted) {
//         setState(() {
//           _isLoading = true;
//         });
//       }
//       await FirebaseController.instanace.sendMessageToChatRoom(
//           widget.chatID, widget.myID, widget.selectedUserID, text, messageType);
//       await FirebaseController.instanace.updateChatRequestField(
//           widget.selectedUserID,
//           messageType == 'text' ? text : '(Photo)',
//           widget.chatID,
//           widget.myID,
//           widget.selectedUserID);
//       await FirebaseController.instanace.updateChatRequestField(
//           widget.myID,
//           messageType == 'text' ? text : '(Photo)',
//           widget.chatID,
//           widget.myID,
//           widget.selectedUserID);
//       _getUnreadMSGCountThenSendMessage();
//     } catch (e) {
//       _showDialog('Error user information to database');
//       _resetTextFieldAndLoading();
//     }
//   }

//   Future<void> _getUnreadMSGCountThenSendMessage() async {
//     try {
//       int unReadMSGCount = await FirebaseController.instanace
//           .getUnreadMSGCount(widget.selectedUserID);
//       await NotificationController().sendNotificationMessageToPeerUser(
//           unReadMSGCount,
//           messageType,
//           _msgTextController.text,
//           widget.myName,
//           widget.chatID,
//           widget.selectedUserToken);
//     } catch (e) {
//       print(e.message);
//     }
//   }

//   _resetTextFieldAndLoading() {
//     FocusScope.of(context).requestFocus(FocusNode());
//     _msgTextController.text = '';
//     if (this.mounted) {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   _showDialog(String msg) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             content: Text(msg),
//           );
//         });
//   }
// }
