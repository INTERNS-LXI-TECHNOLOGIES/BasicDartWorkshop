// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

import 'offer_screen.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact>? _contacts;
  List<Contact>? _searchList;
  TextEditingController searchController = TextEditingController();
  bool _permissionDenied = false;
  List<Contact>? contactList;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      List<Contact> contacts = await FlutterContacts.getContacts(
          withPhoto: true, withProperties: true);
      // contacts = contacts
      //     .where((element) => element.phones.first.number.isNotEmpty)
      //     .toList();

      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('contacts -[${_contacts!.length}]'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchController,
                  enabled: true,
                  onChanged: (value) {
                    setState(() {
                      (value.isNotEmpty
                          ? (_searchList = _contacts!
                              .where((element) => element.displayName
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                              .toList())
                          : (_contacts != _contacts));
                    });
                  },
                  decoration: InputDecoration(
                    //border: OutlineInputBorder(gapPadding: 4.0),
                    contentPadding: EdgeInsets.all(20),
                    labelText: 'search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 5),
                    ),
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
      );

  Widget _body() {
    if (_permissionDenied) return Center(child: Text('Permission denied'));
    if (_contacts == null) return Center(child: CircularProgressIndicator());

    return ListView.builder(
      shrinkWrap: true,
      itemCount: searchController.text.isNotEmpty
          ? _searchList!.length
          : _contacts!.length,
      itemBuilder: (context, i) => ListTile(
        title: Text(searchController.text.isNotEmpty
            ? _searchList![i].displayName
            : _contacts![i].displayName),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Offer()),
          );
        },
      ),
    );
  }
}
