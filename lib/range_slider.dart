import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Dos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar'),
          ),
          const MyRangeSlider(), // Moved here, outside of the ElevatedButton
        ],
      ),
    );
  }
}

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({Key? key}) : super(key: key);

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues rangeValues = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(
      rangeValues.start.toStringAsFixed(1),
      rangeValues.end.toStringAsFixed(1),
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Selecciona un rango:',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          RangeSlider(
            values: rangeValues,
            min: 0.0,
            max: 1.0,
            divisions: 10,
            labels: rangeLabels,
            onChanged: (newValues) {
              setState(() {
                rangeValues = newValues;
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            'Rango seleccionado: ${rangeValues.start.toStringAsFixed(1)} - ${rangeValues.end.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
        ],
      ),
    );
  }
}
