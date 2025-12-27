import 'package:flutter/material.dart';
import 'package:snap_shop_ecommerce_app/views/bottoNav/navPages/cart_page.dart';
import 'package:snap_shop_ecommerce_app/views/bottoNav/navPages/default_page.dart';
import 'package:snap_shop_ecommerce_app/views/bottoNav/navPages/order_page.dart';
import 'package:snap_shop_ecommerce_app/views/bottoNav/navPages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int chosenIndex = 0;

  List navPages = [DefaultPage(), OrderPage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[chosenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: chosenIndex,
        onTap: (index) {
          setState(() {
            chosenIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Orders'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
