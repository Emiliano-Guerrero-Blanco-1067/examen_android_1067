import 'package:flutter/material.dart';
import 'package:act7_1067/pagina_inicial.dart';
import 'package:act7_1067/range_slider.dart';
import 'package:act7_1067/CheckboxListTile.dart';
import 'package:act7_1067/Physical_model.dart';
import 'package:act7_1067/FadeTransition.dart';
import 'package:act7_1067/CascadeOperator.dart';
import 'package:act7_1067/OrientationBuilder.dart';
import 'package:act7_1067/Builder.dart';
import 'package:act7_1067/PageViewBuilder.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rutas entre paginas",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),

        '/pantalla3': (context) => const PantallaTres(),

        '/pantalla4': (context) => const PantallaCuatro(),

        '/pantalla5': (context) => const PantallaCinco(),

        '/pantalla6': (context) => const PantallaSeis(),

        '/pantalla7': (context) => const PantallaSiete(),

        '/pantalla8': (context) => const PantallaOcho(),

        '/pantalla9': (context) => const PantallaNueve(),
      },
    );
  }
}
