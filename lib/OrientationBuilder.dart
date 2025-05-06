import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Siete',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: const Center(
        child: MyOrientationBuilder(),
      ),
    );
  }
}

class MyOrientationBuilder extends StatefulWidget {
  const MyOrientationBuilder({Key? key}) : super(key: key);

  @override
  State<MyOrientationBuilder> createState() => _MyOrientationBuilderState();
}

class _MyOrientationBuilderState extends State<MyOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(title: const Text('Orientation Builder')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? buildPortrait()
                    : buildLandscape(),
          ),
        ),
      ),
    );
  }

  Widget buildPortrait() => ListView(
        children: [
          buildImage(),
          const SizedBox(height: 16),
          buildText(),
        ],
      );

  Widget buildLandscape() => Row(
        children: [
          Expanded(flex: 2, child: buildImage()),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(child: buildText()),
          ),
        ],
      );

  Widget buildImage() => ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          'https://images.unsplash.com/photo-1585129819171-80b02d4c85b0?auto=format&fit=crop&w=634&q=80',
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) =>
              progress == null ? child : const CircularProgressIndicator(),
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.broken_image,
            size: 100,
            color: Colors.grey,
          ),
        ),
      );

  Widget buildText() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hair Styling',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(height: 16),
          Text(
            '''The oldest known depiction of hair styling is hair braiding which dates back about 30,000 years. In history, women's hair was often elaborately and carefully dressed in special ways. From the time of the Roman Empire until the Middle Ages, most women grew their hair as long as it would naturally grow.

Between the late 15th century and the 16th century, a very high hairline on the forehead was considered attractive. Around the same time period, European men often wore their hair cropped no longer than shoulder-length. In the early 17th century, male hairstyles grew longer, with waves or curls being considered desirable.''',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.justify,
          ),
        ],
      );
}
