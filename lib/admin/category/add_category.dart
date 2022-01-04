import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/category.dart';
import 'package:flutter_application/models/products.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddCategoryPage extends StatefulWidget {
  AddCategoryPage({Key key}) : super(key: key);

  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  TextEditingController _categoryController = TextEditingController();

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
        title: Text("Add Category"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _categoryController,
            decoration: const InputDecoration(hintText: 'Category Name'),
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
                    Category category = Category();
                    category.category = _categoryController.text;

                    List<int> imageBytes =
                        File(_imageFile.path).readAsBytesSync();
                    print(imageBytes);
                    String base64Image = base64Encode(imageBytes);

                    category.picture = base64Image;

                    addUpdateCategory(category);
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
