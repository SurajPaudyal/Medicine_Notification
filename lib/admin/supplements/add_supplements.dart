import 'package:flutter/material.dart';

class AddSupplementPage extends StatelessWidget {
  const AddSupplementPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Supplements"),
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
              decoration: const InputDecoration(hintText: 'Suppliment Name'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Suppliment name';
                } else if (value.length > 30) {
                  return 'Suppliment name cannot have more then 30 letters';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Product Details'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Write about Product';
                } else if (value.length > 300) {
                  return 'Product Details cannot have more then 300 letters';
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
              decoration: const InputDecoration(hintText: 'Size'),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return 'You musk enter the Size';
                } else if (value.length > 10) {
                  return 'Size cannot have more then 10 Numbers';
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
