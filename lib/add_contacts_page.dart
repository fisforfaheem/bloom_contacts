import 'package:flutter/material.dart';

class AddContactsPage extends StatelessWidget {
  const AddContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a Contact'),
      ),
      body: const Center(child: Text('CONTACT ADD HERE')),
    );
  }
}
