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
      backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(key: super.key, itemname: "dasdsas");
        },
      ),
    );
  }
}

// class _AppWidgetState

class ItemWidget extends StatelessWidget {
  String itemname = "";

  ItemWidget({super.key, required this.itemname});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 60,
      // decoration: const BoxDecoration(color: Color(0xff6d86dcff)),
      child: ListTile(
        tileColor: const Color(0xff6d86dcff),
        title: const Text("test", style: TextStyle(color: Colors.white)),
        trailing: Container(
          width: 60,
          child: Row(
            children: [
              SizedBox(
                width: 30,
                height: 35,
                child: TextButton(
                    onPressed: () => {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  title: const Text("Ред.",
                                      style: TextStyle(color: Colors.lime)),
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(26),
                                      width: 150,
                                      child: TextField(
                                          onChanged: (v) => print(v),
                                          decoration: const InputDecoration(
                                            labelText: 'Введите текст',
                                            border: OutlineInputBorder(),
                                          )),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          print("hello");
                                        },
                                        child: const Text("Изменить",
                                            style:
                                                TextStyle(color: Colors.lime)))
                                  ],
                                );
                              })
                        },
                    child: const Icon(
                      Icons.edit,
                      size: 16,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: 30,
                height: 35,
                child: TextButton(
                    onPressed: () => {print("54qew")},
                    child: const Icon(
                      Icons.delete,
                      size: 16,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
