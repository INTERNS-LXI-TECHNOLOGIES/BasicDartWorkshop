import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recharge App",
      home: Scaffold(
        body: Container(
          child: const Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
