import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
            const SizedBox(height: 30),
            PhysicalModel(
              color: Colors.transparent,
              shadowColor: Colors.black,
              elevation: 10,
              child: Image.network(
                'https://raw.githubusercontent.com/Emiliano-Guerrero-Blanco-1067/Videoclub_imagenes_app_flutter/refs/heads/main/media67b70cd98fe9b844894570.jpg',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 30),
            PhysicalModel(
              color: Colors.black,
              elevation: 10,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
