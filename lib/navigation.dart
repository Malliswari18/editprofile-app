import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 50),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.purple,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.pinkAccent,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
