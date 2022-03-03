import 'package:flutter/material.dart';

import 'package:recharge_app/contacts.dart';

//import 'contacts.dart';

class Recharge extends StatefulWidget {
  Recharge({Key? key}) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  final _key = GlobalKey<FormState>();
  TextEditingController validController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("enter number for recharge"),
        backgroundColor: Colors.red,
      ),
      body: Form(
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
                      autofocus: true,
                      validator: (value) {
                        String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                        RegExp regExp = RegExp(pattern);
                        if (value == null ||
                            value.isEmpty ||
                            !regExp.hasMatch(value)) {
                          return 'Please enter valid mobile number';
                        }
                        return null;
                      },
                      // decoration: InputDecoration(
                      //   border: OutlineInputBorder(gapPadding: 4.0),
                      //   hintText: 'enter mobile number',
                      //   suffixIcon: IconButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => Contacts()),
                      //       );
                      //     },
                      //     icon: Icon(Icons.contacts),
                      //     splashRadius: 20,
                      //   ),
                      // ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            // ('number not valid');
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text('Processing Data')),
                            // );
                          }
                        },
                        child: Text('recharge')),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100, //MediaQuery.of(context).size.height / 3,
                color: Colors.blue[300],
                child: const Image(
                  image: AssetImage('assets/images/img.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
