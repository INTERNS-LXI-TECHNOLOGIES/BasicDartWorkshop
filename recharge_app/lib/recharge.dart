// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recharge_app/api.dart';
import 'package:recharge_app/contacts.dart';
import 'package:recharge_app/model/recharge_response.dart';
import 'package:recharge_app/offer_screen.dart';

//import 'contacts.dart';

class Recharge extends StatefulWidget {
  Recharge({Key? key}) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  final GlobalKey<FormState> _key = GlobalKey();
  TextEditingController validController = TextEditingController();
  bool isValid = true;
  String? mobNum;
  Api api = Api();
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("enter number for recharge"),
        backgroundColor: Colors.blue[500],
      ),
      body: Form(
        key: _key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black26),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: validController,
                      enabled: true,
                      autofocus: true,
                      validator: (value) {
                        String pattern =
                            r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';
                        RegExp regExp = RegExp(pattern);
                        if (value == null || value.isEmpty) {
                          isValid = false;
                          return 'enter mobile number';
                        } else if (!regExp.hasMatch(value)) {
                          isValid = false;
                          return 'Please enter valid mobile number';
                        }

                        //api.number(value);
                        return null;
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(gapPadding: 4.0),
                        hintText: 'enter mobile number',
                        suffixIcon: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contacts()),
                            );
                          },
                          icon: const Icon(Icons.contacts),
                          splashRadius: 20,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            isSelect = true;
                            api.opCode = 23;
                          },
                          child: const Text('Vi'),
                          // style:ButtonStyle(backgroundColor:) ,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              isSelect = true;
                              api.opCode = 2;
                            },
                            child: const Text('airtel')),
                        ElevatedButton(
                            onPressed: () {
                              isSelect = true;
                              api.opCode = 4;
                            },
                            child: const Text('bsnl')),
                        ElevatedButton(
                            onPressed: () {
                              isSelect = true;
                              api.opCode = 11;
                            },
                            child: const Text('jio')),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            _key.currentState!.validate();
                            debugPrint('phone number: ${validController.text}');
                            if (isValid == true && isSelect == true) {
                              // final mobNum = validController.text;
                              debugPrint('key.currentState is valid');
                              api.number = validController.text;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Offer(
                                          api: api,
                                        )),
                              );
                            } else {}
                          },
                          child: const Text('recharge'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black26),
                  width: MediaQuery.of(context).size.width,
                  height: 100, //MediaQuery.of(context).size.height / 3,
                  // child: Column(
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {},
                  //       child: const Text('Vi'),
                  //     ),
                  //     ElevatedButton(
                  //         onPressed: () {}, child: const Text('airtel')),
                  //     ElevatedButton(
                  //         onPressed: () {}, child: const Text('bsnl')),
                  //     ElevatedButton(
                  //         onPressed: () {}, child: const Text('jio')),
                  //   ],
                  // ),

                  //child: _body(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
