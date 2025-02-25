import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 12, 3, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Image.network(
              "https://th.bing.com/th/id/OIG3.zFH_WN91YNr_Stt4IA.Q",
              height: 500,
              width: 500,
            ),
          ),
        ),
      ),
    );
  }
}
