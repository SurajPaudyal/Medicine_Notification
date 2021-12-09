import 'package:flutter/material.dart';

class BloodGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<BloodGroup> {
  @override
  Widget build(BuildContext context) => initWidget();
}

Widget initWidget() {
  return Scaffold(
      body: SingleChildScrollView(
          child: Column(
    children: [
      Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
          color: new Color(0xffF5591F),
          gradient: LinearGradient(
            colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset(
                "images/app_logo.png",
                height: 90,
                width: 90,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                "Blood Group Database",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        )),
      ),
      Text(
        'Name: Suraj Poudyal ,'
        'Location: Sukedhara ,'
        ' Blood Group: B+ ,'
        ' Phone Number: 9876543210',
        style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
      Divider(),
    ],
  )));
}
