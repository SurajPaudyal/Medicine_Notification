import 'package:flutter/material.dart';

class AddBloodGroupPage extends StatelessWidget {
  const AddBloodGroupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Blood Group"),
        ),
        body: Form(
//        key: _formKey,
            child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Name'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Person Name';
                } else if (value.length > 30) {
                  return 'Person Name cannot have more then 30 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Phone Number'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Phone Number';
                } else if (value.length > 10) {
                  return 'Phone Number cannot have more then 10 numbers';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Location'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Location';
                } else if (value.length > 100) {
                  return 'Location cannot have more then 100 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Blood Group'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Blood Group';
                } else if (value.length > 15) {
                  return 'Child Dose cannot have more then 15 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: ListTile(
                title: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.add),
                    label: const Text("Add")),
              ),
            ),
          ),
        ])));
  }
}
