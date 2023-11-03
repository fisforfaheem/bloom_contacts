import 'package:bloom_contacts/contacts_page.dart';
import 'package:bloom_contacts/model/contacts.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  // Initialize the Flutter binding.
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive.
  await Hive.initFlutter();

  // Register the adapter.
  Hive.registerAdapter(ContactAdapter());
  // Open the box.
  await Hive.openBox<Contact>('contacts');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: const ContactsPage(),
    );
  }
}
