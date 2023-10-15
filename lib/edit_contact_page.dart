import 'package:flutter/material.dart';

class EditContactPage extends StatelessWidget {
  const EditContactPage(contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Contact'),
      ),
      body: Container(
          child: const Center(
        child: Text('Edit Contact here'),
      )),
    );
  }
}
