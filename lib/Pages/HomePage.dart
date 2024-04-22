import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/account_page.dart';
import 'package:grocery_app/Pages/cart_page.dart';
import 'package:grocery_app/Pages/favorite_page.dart';
import 'package:grocery_app/Pages/search_page.dart';
import 'package:grocery_app/Pages/shop_page.dart';
import 'package:grocery_app/components/bottom_navigation_page.dart';
import 'package:provider/provider.dart';

import '../cart_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0; //control bottomNavigationbar

  //this method update our selecteIndex when the user tap on bottomnavigationbar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
    //SearchPage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNaviBar(
       onTabChange: (index) => navigateBottomBar(index),
        ),
    );
  }
}
