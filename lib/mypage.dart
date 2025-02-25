import 'package:flutter/material.dart';

class MypagePage extends StatefulWidget {
  const MypagePage({super.key});

  @override
  State<MypagePage> createState() => _MypagePageState();
}

class _MypagePageState extends State<MypagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 96, 23),
        leading: Icon(Icons.ads_click_sharp),
        title: Text("New Login page",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0))),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 400, right: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50, width: 60),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50, width: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "date of birth",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50, width: 20),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    )),
                SizedBox(height: 20)
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Exit",
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
