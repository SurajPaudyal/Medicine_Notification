import 'package:flutter/material.dart';
import 'package:flutter_application/components/supplements_page.dart';

class AllSupplementList extends StatefulWidget {
  const AllSupplementList({Key key}) : super(key: key);

  @override
  _AllSupplementListState createState() => _AllSupplementListState();
}

class _AllSupplementListState extends State<AllSupplementList> {
  @override
  Widget build(BuildContext context) {
    Padding(
      padding: EdgeInsets.all(0.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          prefixIcon: Icon(Icons.search),
          label: Text("Search Medicine"),
        ),
      ),
    );
    return Scaffold(
      body: SupplementsPage(),
    );
  }
}
