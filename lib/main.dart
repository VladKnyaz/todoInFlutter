import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoflutter/todo/page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    title: "Todo List",
    home: AppWidget(),
  ));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodoPageWidget();
  }
}
