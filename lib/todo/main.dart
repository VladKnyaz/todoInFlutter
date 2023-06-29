import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Todo List",
    home: AppWidget(),
  ));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Super todo list"),
        backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
        elevation: 0,
      ),
    );
  }
}

// export 'package:todoflutter/todo/main.dart';