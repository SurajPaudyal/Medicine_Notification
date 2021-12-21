import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListPage extends StatefulWidget {
  CategoryListPage(
      {Key key, @required this.categoryName, @required this.medicineList})
      : super(key: key);

  String categoryName;
  List<Map<String, dynamic>> medicineList;

  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  var categoryList = [].obs;
  @override
  void initState() {
    categoryList.value = widget.medicineList
        .where((element) => element["category"] == widget.categoryName)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return IndividualListItem(individualItem: categoryList[index]);
          }),
    );
  }
}
// Obx(() => Text(categoryList[index]["name"]))

class IndividualListItem extends StatefulWidget {
  IndividualListItem({Key key, @required this.individualItem})
      : super(key: key);

  Map<String, dynamic> individualItem;

  @override
  State<IndividualListItem> createState() => _IndividualListItemState();
}

class _IndividualListItemState extends State<IndividualListItem> {
  var quantity = 1.obs;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.size.height * 0.2,
      child: Card(
        child: Row(
          children: [
            SizedBox(
              height: Get.size.height * 0.12,
              width: Get.size.width * 0.2,
              child: FittedBox(
                child: Image.asset(widget.individualItem["picture"]),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: Get.size.width * 0.05,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.individualItem["name"],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Company: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.individualItem["Company"])
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Price: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.individualItem["price"].toString())
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Composition: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.individualItem["composition"].toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            if (quantity > 0) quantity = quantity - 1;
                          },
                          child: Icon(Icons.remove),
                        ),
                        Obx(
                          () => Text(quantity.toString()),
                        ),
                        InkWell(
                          onTap: () {
                            quantity = quantity + 1;
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_shopping_cart,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
