import 'package:flutter/material.dart';
import 'package:planner_app/pages/add_page/add_page.dart';
import 'package:planner_app/pages/favourite_page/favourite_page.dart';
import 'package:planner_app/pages/home_page/home_page.dart';
import 'package:planner_app/pages/profile_page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 1,
        currentIndex: _selectedIndex,
        onTap: (int index) => setNavigator(index),
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
