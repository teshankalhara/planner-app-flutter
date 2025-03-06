import 'package:flutter/material.dart';
import 'package:planner_app/pages/add_page/add_page.dart';
import 'package:planner_app/pages/favourite_page/favourite_page.dart';
import 'package:planner_app/pages/home_page/home_page.dart';
import 'package:planner_app/pages/profile_page/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = [
    const HomePage(),
    const AddPage(),
    const FavouritePage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void setNavigator(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 1,
        currentIndex: _selectedIndex,
        onTap: setNavigator,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 30),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 30),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
