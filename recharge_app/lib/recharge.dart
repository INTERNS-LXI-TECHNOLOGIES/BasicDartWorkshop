// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Recharge extends StatelessWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("enter number for recharge"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  color: Colors.black12,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('recharge')),
                      const Text('REcharge'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.blue[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
