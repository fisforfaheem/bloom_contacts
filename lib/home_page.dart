import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //!reference the box
  final Box _myBox = Hive.box('myBox');

  //read data
  void readData() {}

  //write data
  void writeData() {
    _myBox.put(1, 'Faheem Ahmad');
    print(_myBox.get(1));
  }

  //delete data
  void deleteData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.amberAccent,
              child: const Text('Write'),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.amberAccent,
              child: const Text('Read'),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.amberAccent,
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
