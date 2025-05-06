import 'package:flutter/material.dart';
import 'user_model.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using Cascade Operator
    User user1 = User()
      ..name = 'User1'
      ..age = 13
      ..changeName();

    // Without Cascade Operator
    User user2 = User();
    user2.name = 'User2';
    user2.age = 20;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Seis',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar'),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '''User user1 = User()
  ..name = 'User1'
  ..age = 13
  ..changeName();''',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Text('user1.name: ${user1.name}',
                style: const TextStyle(fontSize: 20)),
            Text('user1.age: ${user1.age}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text('user2.name: ${user2.name}',
                style: const TextStyle(fontSize: 20)),
            Text('user2.age: ${user2.age}',
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
