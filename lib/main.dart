import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dice Game',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'Silkscreen'),
          )),
          backgroundColor: Colors.grey[800],
        ),
        backgroundColor: Colors.grey[800],
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static int leftDiceNumber = 6;
  static int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      leftDiceNumber = randomNumber();
      rightDiceNumber = randomNumber();
    });
  }

  randomNumber() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}

/*
class DicePage extends StatelessWidget {
  const DicePage({super.key});
//  static int leftDiceNumber = 1;
//  static int rightDiceNumber = 4;
  static int leftDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('Left button got pressed!');
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('Right button got pressed!');
                },
                child: Image.asset('images/dice6.png')),
          ),
        ],
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.yellow,
                backgroundImage: AssetImage('images/logo.webp'),
              ),
              Text(
                'AKIF Soufiane',
                style: TextStyle(
                  fontFamily: 'Silkscreen',
                  color: Colors.yellow,
                  fontSize: 35.0,
                ),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans',
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(90.0, 0, 90.0, 0),
                  child: Divider()),
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+212 612 025 563',
                        style: TextStyle(
                          fontFamily: 'SourceSans',
                          color: Colors.yellow,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Email@test.com',
                        style: TextStyle(
                          fontFamily: 'SourceSans',
                          color: Colors.yellow,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.red,
              ),
              Container(
                width: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Salam'),
          backgroundColor: Colors.teal,
        ),
        body: const Center(child: Text('Hello it\'s me')),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 50.0),
            padding: EdgeInsets.all(25.0),
            color: Colors.white,
            child: Text('hello'),
          ),
        ),
      ),
    );
  }
}
*/
