import 'package:bloom_contacts/contacts_list.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class AddContactsPage extends StatefulWidget {
  const AddContactsPage({super.key});

  @override
  State<AddContactsPage> createState() => _AddContactsPageState();
}

class _AddContactsPageState extends State<AddContactsPage> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController userPhoneController = TextEditingController();

  void addNewContact(String name, String phone) {
    final newContact = {
      'name': name,
      'phone': phone,
      'image': faker.image.image(random: true),
    };
    setState(() {
      ContactList.contact.add(newContact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a Contact'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Name',
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              TextFormField(
                controller: userPhoneController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Phone Number',
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              MaterialButton(
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () async {
                  addNewContact(
                      userNameController.text, userPhoneController.text);
                },
                child: const Text('SAVE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
