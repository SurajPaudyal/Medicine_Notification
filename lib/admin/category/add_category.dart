import 'package:flutter/material.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Category"),
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
                      padding: EdgeInsets.fromLTRB(4, 40, 14, 40),
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
              decoration: const InputDecoration(hintText: 'Category Name'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Category name';
                } else if (value.length > 30) {
                  return 'Category name cannot have more then 30 letters';
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
