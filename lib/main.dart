import 'package:curlytailsapp/screens/auth_screen.dart';
import 'package:curlytailsapp/screens/explore-screen.dart';
import 'package:curlytailsapp/screens/home-screen.dart';
import 'package:curlytailsapp/screens/login-screen.dart';
import 'package:curlytailsapp/screens/main_home_screen.dart';
import 'package:curlytailsapp/screens/product-detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': ((context) => LoginScreen()),
          '/home': (context) => MainHomeScreen()
        });
  }
}
