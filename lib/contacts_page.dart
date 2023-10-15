import 'package:bloom_contacts/add_contacts_page.dart';
import 'package:bloom_contacts/contacts_list.dart';
import 'package:bloom_contacts/edit_contact_page.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloom Contacts'),
      ),
      body: ListView.builder(
        itemCount: ContactList.contact.length,
        itemBuilder: (context, index) {
          final contactList = ContactList.contact[index];
          return ListTile(
            dense: false,
            leading: const Icon(Icons.person),
            title: Text(contactList['name']),
            subtitle: Text(contactList['phone']!),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditContactPage(
                            contact: ContactList.contact[index],
                          )));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
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
