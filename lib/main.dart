import 'package:eccomerce/Providers/Product_Provider.dart';
import 'package:eccomerce/Screens/HomePageProduct.dart';
import 'package:eccomerce/Screens/LoginPage.dart';
import 'package:eccomerce/Screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eccomerce/Providers/Auth_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context)=>ProductProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepageproduct()
        ),
      
    );
  }
}
