import 'package:flutter/material.dart';

class PantallaOcho extends StatelessWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Ocho',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
          const MyBuilder(), // This will now be inside PantallaOcho
        ],
      ),
    );
  }
}

class MyBuilder extends StatelessWidget {
  const MyBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Center(
          child: Text(
            '"Builder" widget will give a new context',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
