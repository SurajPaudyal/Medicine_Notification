import 'package:flutter/material.dart';

class medicine extends StatefulWidget {
  @override
  _medicineState createState() => _medicineState();
}

class _medicineState extends State<medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Search Medicine'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}