import 'package:flutter/material.dart';

class ListViewbuilderPage extends StatefulWidget {
  const ListViewbuilderPage({super.key});

  @override
  State<ListViewbuilderPage> createState() => _ListViewbuilderPageState();
}

class _ListViewbuilderPageState extends State<ListViewbuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          child: ListTile(
            leading: Icon(Icons.message),
            title: Text("item ${index}"),
          ),
        );
      }),
    );
  }
}
