import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/add_page.dart';
import 'package:myapp/pages/favourits_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/profile_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AddPage(),
    const FavourtisPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "workout planner",
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
