import 'package:bloom_contacts/add_contacts_page.dart';
import 'package:bloom_contacts/contacts_list.dart';
import 'package:bloom_contacts/edit_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          return Ink(
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: .5,
                ),
              ),
            ),
            child: ListTile(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              dense: false,
              leading: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: Image.network(contactList['image']!),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(contactList['image']!),
                ),
              ),
              title: Text(
                contactList['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.email_rounded,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      final url = 'https://wa.me/${contactList['phone']}';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const Icon(
                      Icons.phone_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
              subtitle: Text(contactList['phone']!),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditContactPage(
                              contact: ContactList.contact[index],
                            )));
              },
            ),
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
