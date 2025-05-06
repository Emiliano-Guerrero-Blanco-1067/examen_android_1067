import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Tres',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text('Checkbox List Tile'),
              subtitle: const Text('Subtitle'),
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.black12,
              activeColor: Colors.yellow,
              checkColor: Colors.pinkAccent,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
