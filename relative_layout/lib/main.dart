import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Relative Layout: Row, Column, Padding, and Expanded"),
        ),
        body: Container(
          padding: const EdgeInsets.all(30), //memberi widget jarak dari layar

          //widget tersusun column
          child: Column(
            //column memiliki widget row
            children: <Widget>[
              //membuat widget tambahan dari children row atau column
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Top Left"),
                    Text("Top Center"),
                    Text("Top Right")
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Center Left"),
                  Text("Center "),
                  Text("Center Right")
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Bottom Left"),
                  Text("Bottom Center"),
                  Text("Bottom Right")
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
