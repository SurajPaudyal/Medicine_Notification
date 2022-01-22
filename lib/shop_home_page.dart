import 'package:flutter/material.dart';
import 'package:flutter_application/admin/admin_home.dart';
import 'package:flutter_application/components/all_supplement_lists.dart';
import 'package:flutter_application/controller/users_controller.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application/view/screens/pages/drawer.dart';
import 'package:flutter_application/view/screens/pages/wishList_cart.dart';
import 'package:get/get.dart';
import 'components/supplements_page.dart';

// ignore: must_be_immutable
class ShopHomePage extends StatelessWidget {
  ShopHomePage({key}) : super(key: key);

  var controller = Get.put(UsersController());

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          //  OnTap(){
          //   Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => AllSupplementList()));
          // },
          AssetImage('assets/supplementimages/1.jpg'),
          AssetImage('assets/supplementimages/2.jpg'),
          AssetImage('assets/supplementimages/3.jpg'),
          AssetImage('assets/supplementimages/4.jpg'),
          AssetImage('assets/supplementimages/5.jpg'),
        ],
        autoplay: true,
//      animationCurve: Curve.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.deepOrange,
        indicatorBgPadding: 6.0,
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.to(() => AdminHomePage());
        },
        label: Row(
          children: [
            Icon(Icons.admin_panel_settings),
            Text(
              "Admin Panel",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Sushant Pharmacy'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              padding: EdgeInsets.only(right: 10.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WishListCartPage()));
              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(child: DrawerPage()),
      body: Column(
        children: <Widget>[
//==========Image Carousel Begins=================
          image_carousel,
          //Padding Widget
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Food Supplement Products',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),
                )),
          ),

          //Grid View
          Flexible(
            child: SupplementsPage(),
          )
        ],
      ),
    );
  }
}
