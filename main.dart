import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff00363a),
      ),
      home: MyHomePage(title: 'Hi this is Suhas!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            _hasBeenPressed ? Color(0xfff44336) : Color(0xff689f38),
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color(0xff00363a),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Good Morning!',
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _hasBeenPressed = !_hasBeenPressed;
            });
          },
          label: const Text('Change color'),
          foregroundColor: Color(0xfff3e5f5),
          backgroundColor: Color(0xff00363a),
        ));
  }
}
