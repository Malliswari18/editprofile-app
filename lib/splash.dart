import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(18),
          child: Image.network(
              "https://api.reliasoftware.com/uploads/what_is_flutter_fcb6c7a4b8.png"),
        ),
      ),
    );
  }
}
