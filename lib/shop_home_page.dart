import 'package:flutter/material.dart';
import 'package:flutter_application/blood_group.dart';
import 'package:flutter_application/drug/medicine.dart';
import 'package:flutter_application/pages/category_page.dart';
import 'package:flutter_application/pages/chat_box.dart';
import 'package:flutter_application/splash_screen.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'components/Products.dart';
import 'package:flutter_application/pages/cart.dart';

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/1.jpg'),
          AssetImage('images/2.jpg'),
          AssetImage('images/3.jpg'),
          AssetImage('images/4.jpg'),
          AssetImage('images/5.jpg'),
          AssetImage('images/6.jpg'),
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
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Online Pharmacy'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//         Header
            new UserAccountsDrawerHeader(
              accountName: Text('Name Admin '),
              accountEmail: Text('NameAdmin@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.deepOrange),
            ),

//          Body

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new ShopHomePage()));
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new CategoryPage()));
              },
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Remainder'),
                leading: Icon(
                  Icons.access_alarm,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new ChatBox()));
              },
              child: ListTile(
                title: Text('Chat With Pharmacist'),
                leading: Icon(
                  Icons.mark_chat_read_outlined,
                  color: Colors.blue,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => new medicine()));
              },
              child: ListTile(
                title: Text('Search Medicine'),
                leading: Icon(
                  Icons.medical_services,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BloodGroup(),
                    ));
              },
              child: ListTile(
                title: Text('Blood Group'),
                leading: Icon(
                  Icons.bloodtype,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashScreen(),
                    ));
              },
              child: ListTile(
                title: Text('Log Out'),
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
//==========Image Carousel Begins=================
          image_carousel,
          //Padding Widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Products')),
          ),

          //Grid View
          Flexible(child: Products())
        ],
      ),
    );
  }
}