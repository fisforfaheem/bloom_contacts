import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //!reference the box
  final Box _myBox = Hive.box('myBox');

  //!write data
  void writeData() {
    _myBox.put(2, 'Faheem Ahmad');
    print(_myBox.get(1));
  }

  //!read data
  void readData() {
    print(_myBox.get(2));
    print(_myBox.get(1));
  }

  //!delete data
  void deleteData() {
    _myBox.delete(1);
  }

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
              onPressed: readData,
              color: Colors.amberAccent,
              child: const Text('Read'),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.amberAccent,
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
