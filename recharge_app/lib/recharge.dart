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
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black26),
                  child: Column(
                    children: [
                      Center(
                        child: TextField(
                          cursorHeight: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(gapPadding: 4.0),
                            hintText: 'enter mobile number',
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.contacts),
                              splashRadius: 20,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('recharge')),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100, //MediaQuery.of(context).size.height / 3,
                color: Colors.blue[300],
                child: Image(
                    image: NetworkImage(
                        'https://www.myvi.in/content/dam/vodafoneideadigital/StaticPages/consumerimages/misc/data_delights_web_448x252.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
