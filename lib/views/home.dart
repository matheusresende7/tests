import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Teste',),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('You have pushed the button this many times:',),

            Text(
              '$_counter',
              key: Key('counter'),
              style: Theme.of(context).textTheme.headline4,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                FloatingActionButton(
                  onPressed: _decrementCounter,
                  key: Key('decrement'),
                  child: Icon(Icons.remove),
                ),

                FloatingActionButton(
                  onPressed: _incrementCounter,
                  key: Key('increment'),
                  child: Icon(Icons.add),
                ),

              ],
            ),

          ],
        ),
      ),
    );

  }
}
