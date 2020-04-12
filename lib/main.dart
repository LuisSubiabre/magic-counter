import 'package:flutter/material.dart';
import 'package:magic_counter/src/counter1.dart';
import 'package:flutter/services.dart';

void main() => runApp(Screen());

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
 
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Magic Life Counter',
      home: Scaffold(
        body:    Counter1(),
      ),
    );
  }
}


