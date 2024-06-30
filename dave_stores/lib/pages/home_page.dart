// ignore_for_file: prefer_const_constructors

import 'package:dave_stores/components/bottom_nav_bar.dart';
import 'package:dave_stores/pages/cart_page.dart';
// import 'package:dave_stores/pages/profile_page.dart';
import 'package:dave_stores/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // To controll the NavBar
  int _selectedIndex = 0;

// Method to update selected index when the user taps the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Pages to display
  final List<Widget> _pages = [
    const MyShopPage(),
    const MyCartPage(),
    // const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Icon(Icons.menu),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF6C63FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/dev-shops_logo.png',
                    color: Colors.white,
                    width: 150,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                      Navigator.pop(context);
                    });
                  },
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 95.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                      Navigator.pop(context);
                    });
                  },
                ),
                title: Text(
                  'Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 200.0, bottom: 50.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 50,
                  ),
                  onPressed: () {
                    
                  },
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
