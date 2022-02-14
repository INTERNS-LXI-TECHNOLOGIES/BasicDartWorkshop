import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact> _contacts = [];

  @override
  void initState() {
    getContacts();
    super.initState();
  }

  Future<void> getContacts() async {
   
    final List<Contact> contacts = (await ContactsService.getContacts());
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Contacts'),),
      ),
      body: Container(
        
        child: ListView.builder(
          shrinkWrap: true,
          itemCount:_contacts.length,
          itemBuilder: (context,index){
            Contact contact=_contacts[index];
            return ListTile(
              title: Text(contact.displayName!),
              subtitle: Text(contact.phones!.elementAt(0).value!),
            );
          },),
      ),
        );
  }
}
