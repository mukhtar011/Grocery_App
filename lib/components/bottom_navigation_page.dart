import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '';
class BottomNaviBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNaviBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
              icon: Icons.store,
              text: "Shop",
              iconColor: Colors.black,
          ),
          GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
              iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.favorite_border_rounded,
            text: "Favorite",
            iconColor: Colors.black,

          ),
          GButton(
            icon: Icons.manage_accounts_outlined,
            text: "Account",
            iconColor: Colors.black,
          ),
          ],)
    );
  }
}
