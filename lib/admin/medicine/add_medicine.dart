import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddMedicinePage extends StatefulWidget {
  AddMedicinePage({Key key, this.medicine}) : super(key: key);

  Medicine medicine;

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  TextEditingController _medicineNameController = TextEditingController();

  TextEditingController _compositionController = TextEditingController();

  TextEditingController _companyNameController = TextEditingController();

  TextEditingController _categoryController = TextEditingController();

  TextEditingController _priceController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  XFile _imageFile;

  bool isEdit = false;

  @override
  initState() {
    if (widget.medicine != null) {
      isEdit = true;
      _medicineNameController.text = widget.medicine.name;
      _compositionController.text = widget.medicine.composition;
      _companyNameController.text = widget.medicine.companyName;
      _categoryController.text = widget.medicine.category;
      _priceController.text = widget.medicine.price;
    }
  }

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
        title: Text("Add Medicine"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _medicineNameController,
            decoration: const InputDecoration(hintText: 'Medicine Name'),
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
            controller: _compositionController,
            decoration: const InputDecoration(hintText: 'Composition'),
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
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _categoryController,
            decoration: const InputDecoration(hintText: 'Medicine Category'),
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
                    Medicine medicine = Medicine();
                    medicine.name = _medicineNameController.text;
                    medicine.composition = _compositionController.text;
                    medicine.companyName = _companyNameController.text;
                    medicine.price = _priceController.text;
                    medicine.category = _categoryController.text;

                    List<int> imageBytes =
                        File(_imageFile.path).readAsBytesSync();
                    print(imageBytes);
                    String base64Image = base64Encode(imageBytes);

                    medicine.picture = base64Image;

                    if (isEdit) {
                      medicine.id = widget.medicine.id;
                      updateMedicineToDatabase(medicine);
                    } else {
                      addMedicineToDatabase(medicine);
                    }
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
