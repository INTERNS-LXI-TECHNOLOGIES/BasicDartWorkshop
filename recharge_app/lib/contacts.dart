// ignore_for_file: prefer_const_constructors

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact>? _contacts;
  List<Contact>? _searchList;
  final TextEditingController searchController = TextEditingController();
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
    searchController.addListener(() {
      searchContacts();
    });
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts(
          withPhoto: true, withProperties: true);
      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('contacts list'),
          ),
          body: SafeArea(
            child: Column(
              children: [
                //  Padding(padding: EdgeInsets.all(20)),
                TextField(
                  controller: searchController,
                  enabled: true,
                  //  onChanged: (value) => searchContacts(value),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    labelText: 'search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 5),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: _body(),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget _body() {
    if (_permissionDenied) return Center(child: Text('Permission denied'));
    if (_contacts == null) return Center(child: CircularProgressIndicator());

    return ListView.builder(
      shrinkWrap: true,
      itemCount: _contacts!.length,
      itemBuilder: (context, i) => ListTile(
        trailing: Text(_contacts![i].phones.first.number),
        title: Text(_contacts![i].displayName),
        //  leading: (image),

        // onTap: () async {
        //   //      final fullContact = await FlutterContacts.getContacts(
        //   // withProperties: true, withPhoto: true);
        //   final fullContact = await FlutterContacts.getContact(_contacts![i].id,
        //       withPhoto: true);
        //   await Navigator.of(context).push(
        //     MaterialPageRoute(builder: (_) => ContactPage(fullContact!)),
        //   );
        // },
      ),
    );
  }

  // void searchContacts(String value) {
  //   List<Contacts> temp =_contacts![i].phones.((contact) {
  //     return contact.fullName.contains(value);
  //   }).toList();

  //   setState(() {
  //     _searchList = temp;
  //   });
  // }

  void searchContacts() {
    _contacts!.retainWhere((contact) {
      String searchTerm = searchController.text.toLowerCase();
      String contactName = contact.displayName.toLowerCase();
      return contactName.contains(searchTerm);
    });

    setState(() {
      _searchList = _contacts;
    });
  }
}




// class ContactPage extends StatelessWidget {
//   final Contact contact;
//   ContactPage(this.contact);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(title: Text(contact.displayName)),
//         body: Column(
//           children: [
//             Text('First name: ${contact.name.first}'),
//             Text('Last name: ${contact.name.last}'),
//             Text(
//                 'Phone number: ${contact.phones.isNotEmpty ? contact.phones.first.number : '(none)'}'),
//             Text(
//                 'Email address: ${contact.emails.isNotEmpty ? contact.emails.first.address : '(none)'}'),
//           ],
//         ),
//       );
// }
