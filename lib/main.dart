import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter;
  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 119, 69, 1),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(118, 137, 206, 1),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 119, 69, 1),
              Color.fromRGBO(244, 50, 110, 1)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Tap '-' to decrement",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(18),
                  margin: EdgeInsets.fromLTRB(110, 0, 110, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _counter--;
                          });
                        },
                        child: Text("—",
                            style: TextStyle(
                                color: Color.fromRGBO(244, 50, 110, 1),
                                fontSize: 25)),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text("$_counter",
                          style: TextStyle(
                              color: Color.fromRGBO(244, 50, 110, 1),
                              fontSize: 25)),
                      SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _counter++;
                          });
                        },
                        child: Text("+",
                            style: TextStyle(
                                color: Color.fromRGBO(244, 50, 110, 1),
                                fontSize: 25)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Tap '+' to increment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
