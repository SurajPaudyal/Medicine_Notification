import 'package:flutter/material.dart';

class AddCompositionPage extends StatelessWidget {
  const AddCompositionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Composition"),
        ),
        body: Form(
//        key: _formKey,
            child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Composition Name'),
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
              decoration: const InputDecoration(hintText: 'Indication'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Indication';
                } else if (value.length > 450) {
                  return 'Indication cannot have more then 500 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Adult Dose'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Adult Dose';
                } else if (value.length > 500) {
                  return 'Adult Dose cannot have more then 500 Numbers';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Child Dose'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Child Dose';
                } else if (value.length > 500) {
                  return 'Child Dose cannot have more then 500 Numbers';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Side Effects'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Side Effects';
                } else if (value.length > 500) {
                  return 'Side Effects cannot have more then 500 Numbers';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Pregnancy Category'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Pregnancy Category';
                } else if (value.length > 500) {
                  return 'Pregnancy Category cannot have more then 500 Numbers';
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
