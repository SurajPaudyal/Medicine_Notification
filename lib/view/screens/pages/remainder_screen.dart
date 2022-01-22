import 'package:flutter/material.dart';
import 'package:flutter_application/view/screens/pages/add_remainer_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RemainderScreen extends StatefulWidget {
  const RemainderScreen({Key key}) : super(key: key);

  @override
  _RemainderScreenState createState() => _RemainderScreenState();
}

class _RemainderScreenState extends State<RemainderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.deepOrange,
          title: Text('Medicine Remainder'),
          actions: <Widget>[],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            Get.to(() => AddRemainderScreen());
          },
          label: Row(
            children: [
              Icon(Icons.add_alarm),
              Text(
                " Click To Add Remainder",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ));
  }
}
