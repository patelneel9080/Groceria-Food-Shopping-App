import 'package:flutter/material.dart';
import 'package:swiggy/navigation_pages/Food_Page/food_page.dart';

import 'package:swiggy/navigation_pages/dineoutpage.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';
import 'package:swiggy/navigation_pages/geniepage.dart';
import 'package:swiggy/navigation_pages/homepage.dart';
import 'package:swiggy/navigation_pages/instamartpage.dart';

import '../config/app_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final List<Widget> _pages =[
    const HomePage(),
    const Food_Page(),
    const InstamartPage(),
    const DineOutPage(),
    const GeniePage(),
  ];

  Widget showScreens(int index){
    return _pages[index];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: showScreens(activeindex),
      bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined,color: Colors.grey,),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.emoji_food_beverage),
              icon: Icon(Icons.emoji_food_beverage_outlined,color: Colors.grey,),
              label: 'Food',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_bag),
              icon: Icon(Icons.shopping_bag_outlined,color: Colors.grey,),
              label: 'Instamart',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.cookie),
              icon: Icon(Icons.cookie_outlined,color: Colors.grey,),
              label: 'Dineout',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.book_outlined,color: Colors.grey,),
              label: 'Genie',
            ),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              activeindex = index;
            });
          },
          indicatorColor: Colors.transparent,
          height: size.height/14,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          elevation: 1,
          backgroundColor: Colors.white,
          selectedIndex: activeindex),
    );
  }
}
