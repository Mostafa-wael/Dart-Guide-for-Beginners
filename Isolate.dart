import 'dart:isolate';
import 'package:flutter/material.dart';

// COPIED
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
////////////////////////////////

class _MyHomePageState extends State<MyHomePage> {
  // declaring objects
  Isolate isolate;
  ReceivePort receivePort;

  @override
  void initState() {
    // some initializations
    super.initState();
    spawnNewIsolate();
  }

  void spawnNewIsolate() async {
    receivePort = ReceivePort();

    try {
      // just for error handling
      isolate = await Isolate.spawn(sayHello,
          receivePort.sendPort); // get the message from the sayHello function
      print("Isolate: $isolate");
      // receiveing Port
      receivePort.listen((dynamic message) {
        print('New message from Isolate: $message');
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  //spawn accepts only static methods or top-level functions

  static void sayHello(SendPort sendPort) {
    sendPort.send("Hello from Isolate");
  }

  @override
  void dispose() {
    // like a destructor
    super.dispose();

    receivePort.close();

    isolate.kill();
  }

  @override
  Widget build(BuildContext context) {
    // our normal build function
    return Scaffold(
      appBar: AppBar(
        title: Text("Isolate Demo"),
      ),
      body: Center(),
    );
  }
}
