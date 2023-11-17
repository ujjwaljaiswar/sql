import 'package:flutter/material.dart';
import 'Add_Animal.dart';
import 'Animal_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFormPage(),
    );
  }
}

class MyFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAnimalPage()),
                );
              },
              child: Text('Add Animal'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimalListPage()),
                );
              },
              child: Text('View Animals'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

              },
              child: Text('save'),
            ),

          ],
        ),
      ),
    );
  }
}
