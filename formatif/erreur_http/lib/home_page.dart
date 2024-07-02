import 'package:dio/dio.dart';
import 'package:erreur_http/truc.dart';
import 'package:flutter/material.dart';

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
    Truc truc = Truc();

    send() async {
      try {
        var res = await Dio()
            .post("http://10.0.2.2:8080/examen/plusgrand/", data: truc.toJson());
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("La valeur la plus grande est ${res.data}")));
      } on DioException catch (e) {
        if(e.response?.data == "NombresEgaux"){
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Les deux nombres sont égaux")));
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Vosu devez entrer des nombres")));
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("val1"), border: OutlineInputBorder()),
              onChanged: (value) {
                truc.val1 = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("val2"), border: OutlineInputBorder()),
              onChanged: (value) {
                truc.val2 = value;
              },
            ),
            MaterialButton(
              onPressed: send,
              color: Colors.red,
              child: const Text("appuie moi"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
