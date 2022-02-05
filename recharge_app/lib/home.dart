// ignore_for_file: avoid_print, unnecessary_new, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:recharge_app/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: HomeScreen(),
    );
  }
}
