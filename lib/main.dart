import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePageRowColumn(),
    );
  }
}

class MyHomePageCth1 extends StatelessWidget {
  const MyHomePageCth1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Property Child"),
      ),
      body: Container(
        child: Text("Helloo!"),
        color: Colors.yellow,
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}

class MyHomePageCth2 extends StatelessWidget {
  const MyHomePageCth2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Property Children"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Hello 1"),
            color: Colors.lime,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 2"),
            color: Colors.purple,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 3"),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}

class MyHomePageRow extends StatelessWidget {
  const MyHomePageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text("Hello 1"),
            color: Colors.lime,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 2"),
            color: Colors.purple,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 3"),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}

class MyHomePageColumn extends StatelessWidget {
  const MyHomePageColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text("Hello 1"),
            color: Colors.lime,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 2"),
            color: Colors.purple,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text("Hello 3"),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Row"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Button 1"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 2"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 3"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 4"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Column"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Button 1"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 2"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 3"),
              onPressed: () {},
            ),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text("Button 4"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePageRowColumn extends StatelessWidget {
  const MyHomePageRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Row Column"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Button 1"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Button 2"),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Button 3"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Button 4"),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Button 5"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Button 6"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
