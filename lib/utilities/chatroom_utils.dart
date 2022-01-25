// // For Chatlist Functions

// import 'package:appu_med_suppy/utils/strings.dart';
// import 'package:intl/intl.dart';

// String readTimestamp(int timestamp) {
//   var now = DateTime.now();
//   var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
//   var diff = now.difference(date);
//   var time = '';

//   if (diff.inSeconds <= 0 ||
//       diff.inSeconds > 0 && diff.inMinutes == 0 ||
//       diff.inMinutes > 0 && diff.inHours == 0 ||
//       diff.inHours > 0 && diff.inDays == 0) {
//     if (diff.inHours > 0) {
//       time = diff.inHours.toString() + 'h ago';
//     } else if (diff.inMinutes > 0) {
//       time = diff.inMinutes.toString() + 'm ago';
//     } else if (diff.inSeconds > 0) {
//       time = 'now';
//     } else if (diff.inMilliseconds > 0) {
//       time = 'now';
//     } else if (diff.inMicroseconds > 0) {
//       time = 'now';
//     } else {
//       time = 'now';
//     }
//   } else if (diff.inDays > 0 && diff.inDays < 7) {
//     if (diff.inDays == 1) {
//       time = diff.inDays.toString() + 'd ago';
//     }
//   } else if (diff.inDays > 6) {
//     if (diff.inDays == 7) {
//       time = (diff.inDays / 7).floor().toString() + 'w ago';
//     }
//   } else if (diff.inDays > 29) {
//     if (diff.inDays == 30) {
//       time = (diff.inDays / 30).floor().toString() + 'm ago';
//     }
//   }
//   return time;
// }

// String makeChatId(myID, selectedUserID) {
//   String chatID;
//   if (myID.hashCode > selectedUserID.hashCode) {
//     chatID = '$selectedUserID-$myID';
//   } else {
//     chatID = '$myID-$selectedUserID';
//   }
//   return chatID;
// }

// int countChatListUsers(myID, snapshot) {
//   int resultInt = snapshot.data.docs.length;
//   for (var data in snapshot.data.documents) {
//     if (data.id == myID) {
//       resultInt--;
//     }
//   }
//   return resultInt;
// }

// // For ChatRoom Functions

// String returnTimeStamp(int messageTimeStamp) {
//   String resultString = '';
//   var format = DateFormat('hh:mm a');
//   var date = DateTime.fromMillisecondsSinceEpoch(messageTimeStamp);
//   resultString = format.format(date);
//   return resultString;
// }

// void setCurrentChatRoomID(value) async {
//   // To know where I am in chat room. Avoid local notification.
//   Constants.currentChatRoom = value;
// }
