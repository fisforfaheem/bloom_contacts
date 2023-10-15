import 'package:flutter/material.dart';

class EditContactPage extends StatefulWidget {
  final Map contact;

//constructor
  const EditContactPage({
    super.key,
    required this.contact,
  });

  @override
  State<EditContactPage> createState() => _EditContactPageState();
}

class _EditContactPageState extends State<EditContactPage> {
  late TextEditingController userNameController;
  late TextEditingController userPhoneController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController(text: widget.contact['name']);
    userPhoneController = TextEditingController(text: widget.contact['phone']);
  }

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
                controller: userPhoneController,
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
                onPressed: () {
                  setState(() {
                    widget.contact['name'] = userNameController.text;
                    widget.contact['phone'] = userPhoneController.text;
                    // widget.onSave(widget.contact);
                  });
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
