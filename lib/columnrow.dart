import 'package:flutter/material.dart';

class Columnrowpage extends StatefulWidget {
  const Columnrowpage({super.key});

  @override
  State<Columnrowpage> createState() => _ColumnrowpageState();
}

class _ColumnrowpageState extends State<Columnrowpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Name",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "Id",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "Class",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
