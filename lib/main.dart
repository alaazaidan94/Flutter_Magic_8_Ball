import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var x = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me AnyThings'),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                x = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$x.png'),
          ),
        ),
      ),
    );
  }
}
