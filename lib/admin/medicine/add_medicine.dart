import 'package:flutter/material.dart';

class AddMedicinePage extends StatelessWidget {
  const AddMedicinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Medicine"),
        ),
        body: Form(
//        key: _formKey,
            child: ListView(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(24, 40, 14, 40),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Medicine Name'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Medicine name';
                } else if (value.length > 30) {
                  return 'Medicine name cannot have more then 30 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Composition'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Composition';
                } else if (value.length > 100) {
                  return 'Composition cannot have more then 100 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Company Name'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Company name';
                } else if (value.length > 50) {
                  return 'Company name cannot have more then 50 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Price'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Price';
                } else if (value.length > 4) {
                  return 'Price cannot have more then 4 Numbers';
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
