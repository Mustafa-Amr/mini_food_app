import 'package:flutter/material.dart';
import 'package:mini_food_app/cart_tab.dart';
import 'package:mini_food_app/home_tab.dart';
import 'package:mini_food_app/item_model.dart';
import 'package:mini_food_app/profile_tab.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridView = true;
  int currentIndex = 0;
  final List<Widget> pages = [
    HomeTab(),
    CartTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red,),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),
          label: 'Cart',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.man,),
          label: 'Profile',
        ),
      ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

      ),
    );
  }
}