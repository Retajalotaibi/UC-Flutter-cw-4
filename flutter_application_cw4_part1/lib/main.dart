import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            Image.asset(
              "assets/newt.JPG",
              width: 200,
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("name: Newt"),
                Text("age: 5"),
                Text("Gender: male ")
              ],
            )
          ]))),
    );
  }
}
