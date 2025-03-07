import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget{
  void Function(int) onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: GNav(
        // color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (value) => onTabChange(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),

          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),

      ]),
    );
  }
}