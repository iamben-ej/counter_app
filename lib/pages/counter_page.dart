import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You've pressed this many times:",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
