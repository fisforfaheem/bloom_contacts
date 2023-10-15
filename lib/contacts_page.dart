import 'package:bloom_contacts/add_contacts_page.dart';
import 'package:bloom_contacts/edit_contact_page.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});
  final List contacts = [
    {'name': 'Faheem'},
    {'name': 'Ali'},
    {'name': 'Bob'},
    {'name': 'Charlie'},
    {'name': 'David'},
    {'name': 'Eva'},
    {'name': 'Frank'},
    {'name': 'Gina'},
    {'name': 'Hannah'},
    {'name': 'Ivan'},
    {'name': 'Jack'},
    {'name': 'Katie'},
    {'name': 'Liam'},
    {'name': 'Mia'},
    {'name': 'Nate'},
    {'name': 'Olivia'},
    {'name': 'Pete'},
    {'name': 'Quinn'},
    {'name': 'Rachel'},
    {'name': 'Steve'},
    {'name': 'Tina'},
    {'name': 'Uma'},
    {'name': 'Vince'},
    {'name': 'Wendy'},
    {'name': 'Xander'},
    {'name': 'Yara'},
    {'name': 'Zoe'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloom Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(contacts[index]['name']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EditContactPage(contacts[index]['name'])));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddContactsPage()));
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
