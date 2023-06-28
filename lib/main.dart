import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FSDFKHJASDFHJADSHJK',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 135, 255, 189)),
          primaryColor: const Color.fromARGB(255, 67, 156, 129),
          scaffoldBackgroundColor: const Color.fromARGB(255, 32, 31, 37),
          useMaterial3: true,
          textTheme: const TextTheme()),
      home: const MyHomePage(title: "dsa"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("dsadsdas");
  }

  @override
  Widget build(BuildContext context) {
    TextStyle dass() => TextStyle(color: Colors.white, fontSize: 36);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 207, 131),
        title: Text(widget.title),
      ),
      body: Center(
          child: ListTile(
        leading: const Text("TEST",
            style: TextStyle(color: Colors.white, fontSize: 36)),
        title: const Text("dassda",
            style: TextStyle(color: Colors.white, fontSize: 36)),
        subtitle: Text('$_counter',
            style: const TextStyle(color: Colors.white, fontSize: 16)),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
