import 'package:flutter/material.dart';

class BloodGroup extends StatefulWidget {
  @override
  _BloodGroup createState() => _BloodGroup();
}

class _BloodGroup extends State<BloodGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Search Blood Group'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 100,
                width: 900,
                child: Text(
                  ' Name: ,'
                      'Phone: ,'
                      'Blood Group: ,'
                      'Location: ,',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}