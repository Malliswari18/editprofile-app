import 'package:flutter/material.dart';

class MynavScreen extends StatefulWidget {
  const MynavScreen({super.key});

  @override
  State<MynavScreen> createState() => _MynavScreenState();
}

class _MynavScreenState extends State<MynavScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "welcome to my navbar page",
          style: TextStyle(fontSize: 50),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 116, 242, 227),
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.orange,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.adb_sharp,
                  color: Colors.purple,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_backup_restore_rounded,
                  color: Colors.blue,
                ),
                label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_off_outlined,
                  color: Colors.pinkAccent,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: const Color.fromARGB(255, 228, 13, 13),
                ),
                label: 'Like'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.beach_access,
                  color: Colors.green,
                ),
                label: 'Vibe'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.audiotrack,
                  color: Colors.black,
                ),
                label: 'music'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera,
                  color: Colors.grey,
                ),
                label: 'camera'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_location,
                  color: Colors.red,
                ),
                label: 'maps'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.food_bank_sharp,
                  color: Colors.pink,
                ),
                label: 'Food'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.exit_to_app_sharp,
                  color: Colors.green,
                ),
                label: 'Exit')
          ]),
    );
  }
}
