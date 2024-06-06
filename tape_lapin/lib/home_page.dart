import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);

  int _pafs = 0;
  int _flops = 0;

  @override
  Widget build(BuildContext context) {
    void tape(int index) {
      if (index == _indexLapin) {
        _pafs++;
        _indexLapin = Random().nextInt(4);
      } else {
        _flops++;
      }
      setState(() {});
    }

    var b1 = MaterialButton(
        onPressed: () {
          tape(0);
        },
        child: Text(_indexLapin == 0 ? "lapin" : "taupe"));
    var b2 = MaterialButton(
        onPressed: () {
          tape(1);
        },
        child: Text(_indexLapin == 1 ? "lapin" : "taupe"));
    var b3 = MaterialButton(
        onPressed: () {
          tape(2);
        },
        child: Text(_indexLapin == 2 ? "lapin" : "taupe"));
    var b4 = MaterialButton(
        onPressed: () {
          tape(3);
        },
        child: Text(_indexLapin == 3 ? "lapin" : "taupe"));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Pafs: $_pafs",
                  style: const TextStyle(color: Colors.green, fontSize: 20),
                ),
                Text(
                  "Flops: $_flops",
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                )
              ],
            ),
            const Text(
              'Tape le lapin',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [b1, b2],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [b3, b4],
            )
          ],
        ),
      ),
    );
  }
}
