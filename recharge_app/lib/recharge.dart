import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:recharge_app/contacts.dart';

//import 'contacts.dart';

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
                  decoration: const BoxDecoration(
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
                              onPressed: () {
                                // ignore: unrelated_type_equality_checks

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Contacts()),
                                );
                              },
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

  // Future<PermissionStatus> _getPermission() async {
  //   final PermissionStatus permission = await Permission.contacts.status;
  //   if (permission != PermissionStatus.granted &&
  //       permission != PermissionStatus.denied) {
  //     final Map<Permission, PermissionStatus> permissionStatus =
  //         await [Permission.contacts].request();
  //     return permissionStatus[Permission.contacts] ??
  //         PermissionStatus.undetermined;
  //   } else {
  //     return permission;
  //   }
  // }
}
