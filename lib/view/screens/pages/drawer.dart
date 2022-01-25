import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/authentication/authentication_service.dart';
import 'package:flutter_application/blood_group.dart';
import 'package:flutter_application/drug/medicine_indication/medicine_indication_home.dart';
import 'package:flutter_application/login_screen.dart';
import 'package:flutter_application/models/medicine.dart';
import 'package:flutter_application/models/supplements.dart';
import 'package:flutter_application/shop_home_page.dart';
import 'package:flutter_application/utilities/constants.dart';
import 'package:flutter_application/utilities/utilities.dart';
import 'package:flutter_application/view/screens/pages/category_page.dart';
import 'package:flutter_application/view/screens/pages/change_password_screen.dart';
import 'package:flutter_application/view/screens/pages/chat_box.dart';
import 'package:flutter_application/view/screens/pages/emergency_numbers.dart';
import 'package:flutter_application/view/screens/pages/ordered_product.dart';
import 'package:flutter_application/view/screens/pages/remainder_screen.dart';
import 'package:get/get.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
//         Header
        new UserAccountsDrawerHeader(
          accountName: Text(Constants.userData.name),
          accountEmail: Text(Constants.userData.email),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShopHomePage()));
          },
          child: ListTile(
            title: Text('Supplement Products'),
            leading: Icon(
              Icons.home,
              color: Colors.indigo,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryPage()));
          },
          child: ListTile(
            title: Text('Medicine Category'),
            leading: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderedProducts()));
          },
          child: ListTile(
            title: Text('Ordered Products'),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatBox()));
          },
          child: ListTile(
            title: Text('Chat With Pharmacist'),
            leading: Icon(
              Icons.mark_chat_read_outlined,
              color: Colors.blue,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RemainderScreen()));
          },
          child: ListTile(
            title: Text('Medicine Remainder'),
            leading: Icon(
              Icons.alarm_rounded,
              color: Colors.red,
            ),
          ),
        ),

        Divider(),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EmergencyNumbers()));
          },
          child: ListTile(
            title: Text('Emergency Numbers'),
            leading: Icon(
              Icons.contact_phone_outlined,
              color: Colors.blue,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SearchMedicineScreen()));
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
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen(),
                ));
          },
          child: ListTile(
            title: Text('Change Password'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            AuthenticationService(FirebaseAuth.instance)
                .signOut()
                .then((value) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(value)));
              if (value == "Signed out") {
                Get.offAll(() => LoginScreen());
              }
            });
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
    );
  }
}
