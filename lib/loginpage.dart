import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 153, 230),
        leading: Icon(Icons.arrow_back_ios),
        title: Text("geethanjali",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            )),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10, width: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50, width: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ))
          ],
        ),
      ),
    );
  }
}
