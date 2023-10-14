import 'package:curlytailsapp/screens/explore-screen.dart';
import 'package:curlytailsapp/screens/fav-screen.dart';
import 'package:curlytailsapp/screens/main_home_screen.dart';
import 'package:curlytailsapp/screens/profile-screen.dart';
import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    MainHomeScreen(),
    ExploreScreen(),
    FavScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItems[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        animationDuration: Duration(milliseconds: 1000),
        selectedIndex: _selectedIndex,
        iconSize: 22,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Explore'),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            title: Text('Favorite'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
