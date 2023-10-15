import 'package:flutter/material.dart';

class EditContactPage extends StatelessWidget {
  EditContactPage(contact, {super.key});

  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Contact'),
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
                  hintText: 'Name',
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                  icon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              MaterialButton(
                textColor: Colors.black,
                color: Colors.white,
                onPressed: () {},
                child: const Text('SAVE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
