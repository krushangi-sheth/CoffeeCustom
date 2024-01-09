import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class Homepage extends StatefulWidget {
  const Homepage ({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _selectedIndex = 0;
  void navigationBottomBar ( int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [

    ShopPage(),


    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}