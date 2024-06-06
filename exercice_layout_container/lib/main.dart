import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercice containers'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              padding: const EdgeInsets.all(10),
            ),
            Container(
              color: Colors.white,
              height: 200,
              padding: const EdgeInsets.all(20),
            ),
            Container(
              color: Colors.green,
              height: 200,
              padding: const EdgeInsets.all(30),
            ),
            Container(
              color: Colors.amberAccent,
              height: 200,
              padding: const EdgeInsets.all(40),
            ),
            Container(
              color: Colors.red,
              height: 200,
              padding: const EdgeInsets.all(50),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              padding: const EdgeInsets.all(60),
            ),
            Container(
              color: Colors.teal,
              height: 200,
              padding: const EdgeInsets.all(70),
            ),
            Container(
              color: Colors.brown,
              height: 200,
              padding: const EdgeInsets.all(80),
            ),
            Container(
              color: Colors.black,
              height: 200,
              padding: const EdgeInsets.all(90),
            ),
            Container(
              color: Colors.cyan,
              height: 200,
              padding: const EdgeInsets.all(99),
            ),
          ],
        ),
      ),
    );
  }
}
