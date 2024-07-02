import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  sendDoc(){
    FirebaseFirestore.instance.collection("super-Roy-Mathieu-infini").add({
      "firstName": "Mathieu",
      "lastName" : "Roy",
      "creationDate": DateTime.now(),
      "expectedExamScore": 100
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: sendDoc,
              color: Colors.deepOrangeAccent,
              child: const Text("Appuie moi"),
            )
          ],
        ),
      ),
    );
  }
}
