// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/bloodGroup.dart';
import 'package:flutter_application/models/products.dart';
import 'package:get/get.dart';

class AddEmergencyNumbersPage extends StatefulWidget {
  AddEmergencyNumbersPage({Key key}) : super(key: key);

  @override
  State<AddEmergencyNumbersPage> createState() =>
      _AddEmergencyNumbersPageState();
}

class _AddEmergencyNumbersPageState extends State<AddEmergencyNumbersPage> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _locationController = TextEditingController();

  TextEditingController _phoneController = TextEditingController();

  TextEditingController _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.to(() => DecodeBaseImage(
      //         base64: base64Image,
      //       ));
      // }),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Add Emergency Number"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _nameController,
            decoration: const InputDecoration(hintText: 'Organization Name'),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Medicine name';
            //   } else if (value.length > 30) {
            //     return 'Medicine name cannot have more then 30 letters';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _locationController,
            decoration:
                const InputDecoration(hintText: 'Organization Location'),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Composition';
            //   } else if (value.length > 100) {
            //     return 'Composition cannot have more then 100 letters';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _phoneController,
            decoration:
                const InputDecoration(hintText: 'Organization Phone-Number'),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Company name';
            //   } else if (value.length > 50) {
            //     return 'Company name cannot have more then 50 letters';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _typeController,
            decoration: const InputDecoration(
                hintText: 'Hospital or Ambulance or Blood Bank '),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Price';
            //   } else if (value.length > 4) {
            //     return 'Price cannot have more then 4 Numbers';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              title: TextButton.icon(
                  onPressed: () {
                    BloodGroupModel type = BloodGroupModel();
                    type.name = _nameController.text;
                    type.location = _locationController.text;
                    type.phone = _phoneController.text;
                    type.type = _typeController.text;

                    addUpdateType(type);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Add")),
            ),
          ),
        ),
      ]),
    );
  }
}
