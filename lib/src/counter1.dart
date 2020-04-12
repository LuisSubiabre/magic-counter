import 'package:flutter/material.dart';

class Counter1 extends StatefulWidget {
  @override
  createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int _countLife1 = 20;
  int _countLife2 = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 10,
          child: Container(
            width: 500,
            //color: Colors.black,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RotationTransition(
                  turns: new AlwaysStoppedAnimation(180 / 360),
                  child: new Text(
                    'Rival: ' '$_countLife1',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    _countLife2--;
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_drop_up),
                ),
                new RotationTransition(
                  turns: new AlwaysStoppedAnimation(180 / 360),
                  child: new Text(
                    '$_countLife2',
                    style: (TextStyle(
                      fontSize: 100,
                    )),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    _countLife2++;
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_drop_down),
                ),
                new RotationTransition(
                  turns: new AlwaysStoppedAnimation(180 / 360),
                  child: new Text('Planeswalker 2'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.red,
              height: 50,
              width: 500,
              child: Image.asset('assets/logo.png')),
        ),
        Expanded(
          flex: 10,
          child: Container(
            width: 500,
            color: Colors.black,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Planeswalker 1'),
                RaisedButton(
                  onPressed: () {
                    _countLife1++;
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_drop_up),
                ),
                Text(
                  '$_countLife1',
                  style: (TextStyle(
                    fontSize: 100,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _countLife1--;
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_drop_down),
                ),
                Text(
                  'Rival: ' '$_countLife2',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    _countLife1 = _countLife2 = 20;
                  });
                },
                label: Text('Reset'),
                icon: Icon(Icons.refresh),
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
