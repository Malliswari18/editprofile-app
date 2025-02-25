import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BasicsScreen extends StatefulWidget {
  const BasicsScreen({super.key});

  @override
  State<BasicsScreen> createState() => _BasicsScreenState();
}

class _BasicsScreenState extends State<BasicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.menu),
        title: Text(
          "Basics page",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search), Icon(Icons.notification_add)],
      ),
      //  body: Center(
      //     child: Stack(
      //       children: [
      //         Container(
      //           height: 500,
      //           width: 500,
      //           color: const Color.fromARGB(255, 204, 213, 101),
      //         ),
      //         Container(
      //           height: 400,
      //           width: 400,
      //           color: const Color.fromARGB(255, 33, 222, 243),
      //         ),
      //         Container(
      //           height: 300,
      //           width: 300,
      //           color: const Color.fromARGB(255, 84, 95, 2),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: const Color.fromARGB(255, 202, 110, 156),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: const Color.fromARGB(255, 225, 84, 84),
      //         ),
      //       ],
      //     ),
      //   ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 12, 3, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
