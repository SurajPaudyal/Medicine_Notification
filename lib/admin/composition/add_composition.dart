// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/composition.dart';
import 'package:flutter_application/models/products.dart';
import 'package:get/get.dart';

class AddCompositionPage extends StatefulWidget {
  AddCompositionPage({Key key}) : super(key: key);

  @override
  State<AddCompositionPage> createState() => _AddCompositionPageState();
}

class _AddCompositionPageState extends State<AddCompositionPage> {
  TextEditingController _compositionController = TextEditingController();

  TextEditingController _indicationController = TextEditingController();

  TextEditingController _adultDoseController = TextEditingController();

  TextEditingController _childDoseController = TextEditingController();

  TextEditingController _sideEffectsController = TextEditingController();

  TextEditingController _pregnancyCategoryController = TextEditingController();

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
        title: Text("Add Composition"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _compositionController,
            decoration: const InputDecoration(hintText: 'Composition'),
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
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _indicationController,
            decoration: const InputDecoration(hintText: 'Indication'),
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
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _adultDoseController,
            decoration: const InputDecoration(hintText: ' Adult Dose'),
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
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _childDoseController,
            decoration: const InputDecoration(hintText: 'Child Dose'),
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
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _sideEffectsController,
            decoration: const InputDecoration(hintText: 'Side Effects'),
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
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _pregnancyCategoryController,
            decoration: const InputDecoration(hintText: 'Pregnancy Category'),
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
                    Composition composition = Composition();
                    composition.composition = _compositionController.text;
                    composition.indication = _indicationController.text;
                    composition.adultDose = _adultDoseController.text;
                    composition.childDose = _childDoseController.text;
                    composition.sideEffects = _sideEffectsController.text;
                    composition.pregnancyCategory =
                        _pregnancyCategoryController.text;

                    addUpdateCompositionToDatabase(composition);
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

class DecodeBaseImage extends StatefulWidget {
  DecodeBaseImage({Key key, this.base64}) : super(key: key);

  String base64;

  @override
  State<DecodeBaseImage> createState() => _DecodeBaseImageState();
}

class _DecodeBaseImageState extends State<DecodeBaseImage> {
  @override
  Widget build(BuildContext context) {
    Uint8List bytes = base64Decode(widget.base64);
    return Scaffold(body: Image.memory(bytes));
  }
}
