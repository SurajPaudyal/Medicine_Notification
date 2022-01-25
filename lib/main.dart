import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/controller_bindings.dart';
import 'package:flutter_application/splash_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBindings(),
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          shadowColor: Colors.deepOrange,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
