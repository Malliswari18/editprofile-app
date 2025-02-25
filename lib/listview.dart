import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            height: 50,
            color: Colors.red,
            child: ListTile(
                leading: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                trailing:
                    Icon(Icons.arrow_back_ios, size: 30, color: Colors.white),
                title: Text(
                  "home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Divider(),
          Container(
            height: 50,
            color: Colors.red,
            child: ListTile(
                leading: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                trailing:
                    Icon(Icons.arrow_back_ios, size: 30, color: Colors.white),
                title: Text(
                  "home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
