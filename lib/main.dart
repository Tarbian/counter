import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterApp(title: 'Counter App'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key, required this.title});
  final String title;
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  late int _counter;

  @override
  void initState() {
    _counter = 1;
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Tooltip(
                  message: "Decrement",
                  child: ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                ),
                const SizedBox(width: 20),
                Tooltip(
                  message: "Reset",
                  child: ElevatedButton(
                    onPressed: _resetCounter,
                    child: const Text('Reset'),
                  ),
                ),
                const SizedBox(width: 20),
                Tooltip(
                  message: "Increment",
                  child: ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.plus_one)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
