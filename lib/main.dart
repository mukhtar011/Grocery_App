import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/IntroPage.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
        // Set BottomNavigationPage as the home
      ),
    );
  }
}