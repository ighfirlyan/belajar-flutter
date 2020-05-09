import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.redAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Relative Layout: Stack Alignment"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30), //memberi jarak stack dari layar
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text("Top Left"),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Top Center"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("Top Right"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
