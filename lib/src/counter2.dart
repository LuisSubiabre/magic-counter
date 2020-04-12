import 'package:flutter/material.dart';

class Counter1 extends StatefulWidget {
@override
  createState() => _Counter1State();
  }


class _Counter1State extends State<Counter1> {
  int _conteo = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    _conteo++;
                    setState(() {
                    });
                  },
                  child: Text('+'),
                ),
                Text(
                  '$_conteo',
                  style: (TextStyle(
                    fontSize: 60,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _conteo--;
                    setState(() {
                    });
                  },
                  child: Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}