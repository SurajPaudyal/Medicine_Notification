import 'package:flutter/material.dart';
import 'package:flutter_application/models/supplements.dart';
import 'dart:convert';

import 'dart:io';
import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddSupplementPage extends StatefulWidget {
  AddSupplementPage({Key key}) : super(key: key);

  @override
  State<AddSupplementPage> createState() => _AddSupplementPageState();
}

class _AddSupplementPageState extends State<AddSupplementPage> {
  TextEditingController _supplementNameController = TextEditingController();

  TextEditingController _detailsController = TextEditingController();

  TextEditingController _companyNameController = TextEditingController();

  TextEditingController _priceController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  XFile _imageFile;

  selectImage() async {
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      print(e.toString());
    }
  }

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
        title: Text("Add Supplements"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _supplementNameController,
            decoration: const InputDecoration(hintText: 'Supplement Name'),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Supplements name';
            //   } else if (value.length > 30) {
            //     return 'Supplements name cannot have more then 30 letters';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _detailsController,
            decoration: const InputDecoration(hintText: 'Product Details'),
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return 'You musk enter the Product Details';
            //   } else if (value.length > 300) {
            //     return 'Product Details cannot have more then 300 letters';
            //   } else {
            //     return "";
            //   }
            // },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _companyNameController,
            decoration: const InputDecoration(hintText: 'Company Name'),
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
            controller: _priceController,
            decoration: const InputDecoration(hintText: 'Price'),
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
          child: InkWell(
            onTap: selectImage,
            child: SizedBox(
              height: Get.size.height * 0.3,
              width: Get.size.width * 0.4,
              child: Card(
                child: _imageFile == null
                    ? Center(
                        child: Text('Click to add image'),
                      )
                    : Image.file(File(_imageFile.path)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              title: TextButton.icon(
                  onPressed: () {
                    Supplements suppliments = Supplements();
                    suppliments.name = _supplementNameController.text;
                    suppliments.details = _detailsController.text;
                    suppliments.companyName = _companyNameController.text;
                    suppliments.price = _priceController.text;

                    List<int> imageBytes =
                        File(_imageFile.path).readAsBytesSync();
                    print(imageBytes);
                    String base64Image = base64Encode(imageBytes);

                    suppliments.picture = base64Image;

                    addUpdateSupplement(suppliments);
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
