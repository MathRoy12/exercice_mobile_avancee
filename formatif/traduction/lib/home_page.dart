import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.red,
                        child: Text(S.of(context).life),
                      )),
                  Expanded(child: Container())
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.yellow,
                        child: Text(S.of(context).longLive),
                      )),
                ],
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.orange,
                    child: Text(S.of(context).teacher),
                  )),
                  Expanded(child: Container())
                ],
              ))
            ],
          ),
        ));
  }
}
