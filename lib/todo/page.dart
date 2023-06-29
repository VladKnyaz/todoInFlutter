import 'package:flutter/material.dart';
import 'package:todoflutter/todo/todo.controller.dart';
import 'package:todoflutter/todo/widgets/item.dart';

class TodoPageWidget extends StatefulWidget {
  const TodoPageWidget({super.key});

  @override
  _TodoPageState createState() => _TodoPageState();
 }

class _TodoPageState extends State<TodoPageWidget> {

  @override
  Widget build(BuildContext context) {
    TodoController.setState = setState; // 0_o

    return Scaffold(
      floatingActionButton:  FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(69, 105, 255, 1.0),
          onPressed: () => {
          showDialog(
            context: context,
            builder: (context) {
              return TodoController.showCreatingDialog(context);
            }),
      }, label: const Text("Create task"), splashColor: Colors.white),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Super todo list"),
        backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: TodoController.getList().length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(text: TodoController.getList()[index]['text'], id: index);
        },

      ),

    );
  }
}