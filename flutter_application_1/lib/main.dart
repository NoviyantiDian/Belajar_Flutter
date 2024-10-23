import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 0, 107)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Belajar Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Define the initial colors for the containers
  List<Color> containerColors = [
    const Color.fromARGB(255, 118, 103, 255),
    const Color.fromARGB(255, 91, 21, 252),
    const Color.fromARGB(255, 246, 248, 96),
    const Color.fromARGB(255, 123, 250, 172),
  ];

  // Define the initial colors for the text
  List<Color> textColors = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.white,
  ];

  // Define the text for each box
  List<String> texts = ["N", "O", "V", "I"];

  void _swapColors(int index) {
    setState(() {
      // Swap the container color with the text color
      Color tempContainerColor = containerColors[index];
      containerColors[index] = textColors[index];
      textColors[index] = tempContainerColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    var lebar = (MediaQuery.of(context).size.width - 16) / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _swapColors(0),
                  child: Container(
                    color: containerColors[0],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        texts[0],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[0],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _swapColors(1),
                  child: Container(
                    color: containerColors[1],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        texts[1],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[1],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => _swapColors(2),
                  child: Container(
                    color: containerColors[2],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        texts[2],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[2],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _swapColors(3),
                  child: Container(
                    color: containerColors[3],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        texts[3],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[3],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
