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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "YO",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              minWidth: double.infinity,
              child: const Text(
                "Bouton du bas",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
