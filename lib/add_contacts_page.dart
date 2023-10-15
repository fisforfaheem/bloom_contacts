import 'package:flutter/material.dart';

class AddContactsPage extends StatelessWidget {
  const AddContactsPage({super.key});

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
                controller: null,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Name',
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              TextFormField(
                controller: null,
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
