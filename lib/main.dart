import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Selamat datang,"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
        body: const Center(child: Text("Hello! Selamat Datang!")),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.forum), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.location_city), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}

class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return GiffyDialog.image(
                  Image.asset(
                    'assets/img/men_wearing_jacket.gif',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    'Image Animation',
                    textAlign: TextAlign.center,
                  ),
                  content: Text(
                    'This is a image animation of men wearing jacket.',
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'CANCEL'),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktik Icon"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.access_alarm),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Alarm"),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Phone"),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.book),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Book"),
                ],
              ),
            ]),
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktik Container"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.purple),
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktik Button"),
      ),
      body: Column(children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          ),
          child: Text("Elevated Button"),
          onPressed: () {},
        ),
        MaterialButton(
          color: Colors.lime,
          child: Text("Material Button"),
          onPressed: () {},
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),
          ),
          child: Text("Text Button"),
          onPressed: () {},
        ),
      ]),
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktik TextFormField"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
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
