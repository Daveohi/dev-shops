// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    required this.onTabChange,
    super.key});

  final Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: EdgeInsets.all(12.0),
        backgroundColor: Color(0xFF6C63FF),
        tabMargin: EdgeInsets.all(3.0),
        activeColor: Colors.deepPurple.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        color:  Color(0xFFFFFFFF),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text:'Cart',
          ),
        ],
      ),
    );
  }
}
