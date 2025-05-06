import 'package:flutter/material.dart';

class PantallaNueve extends StatelessWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc0000),
        centerTitle: true,
        title: const Text(
          'Pantalla Nueve',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyPageViewBuilder(),
                  ),
                );
              },
              child: const Text('Go to Page View Builder'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPageViewBuilder extends StatefulWidget {
  const MyPageViewBuilder({Key? key}) : super(key: key);

  @override
  State<MyPageViewBuilder> createState() => _MyPageViewBuilderState();
}

class _MyPageViewBuilderState extends State<MyPageViewBuilder> {
  final List<Color> _colors = [
    Colors.orange,
    Colors.purple,
    Colors.redAccent,
    Colors.teal,
    Colors.blue,
    Colors.black,
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page View Builder')),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _colors.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  color: _colors[index],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Page ${index + 1}',
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            fontSize: 30,
                            color: _colors[index]!.computeLuminance() > 0.5
                                ? Colors.black
                                : Colors
                                    .white, // Adjust text color based on background
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Optionally, add a page indicator at the bottom
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _colors.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor:
                        currentPage == index ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
