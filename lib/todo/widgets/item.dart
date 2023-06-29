import 'package:flutter/material.dart';
import 'package:todoflutter/todo/page.dart';
import 'package:todoflutter/todo/todo.controller.dart';


class ItemWidget extends StatelessWidget {
  String text = "";
  int id;

  ItemWidget({super.key, required this.text, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 60,
      decoration: const BoxDecoration(color: Color(0xff6d86dcff)),
      child: ListTile(
        tileColor: const Color(0xff6d86dcff),
        title: Text(text, style: const TextStyle(color: Colors.white)),
        trailing: SizedBox(
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
                            return TodoController.showDialogEditing(context, id, text);
                          }),
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
                    onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return TodoController.showDialogDeleteItemWhenClickOnTrash(context, id);
                          }),
                    },
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

class CreateItemDialog extends StatelessWidget {
  const CreateItemDialog({super.key});

  @override
  Widget build(BuildContext context) {

    final inputEditor = TextEditingController();
    return SimpleDialog(
      title: const Text("Добавление",
          style: TextStyle(color: Colors.lime)),
      children: [
        Container(
          margin: const EdgeInsets.all(26),
          width: 150,
          child: TextField(
              maxLength: 65,
              controller: inputEditor,
              decoration: const InputDecoration(
                labelText: 'Введите текст',
                border: OutlineInputBorder(),
              )),
        ),
        TextButton(
            onPressed: () => TodoController.createItem(inputEditor.text),
            child: const Text("Добавить",
                style:
                TextStyle(color: Colors.lime)))
      ],
    );
  }
}


class DialogEditing extends StatelessWidget {
  String text = "";
  int id;

  DialogEditing({super.key, required this.text, required this.id});

  @override
  Widget build(BuildContext context) {

    final inputEditor = TextEditingController();
    return SimpleDialog(
      title: const Text("Редактирование",
          style: TextStyle(color: Colors.lime)),
      children: [
        Container(
          margin: const EdgeInsets.all(26),
          width: 150,
          child: TextField(
            controller: inputEditor,
              decoration: const InputDecoration(
                labelText: 'Введите текст',
                border: OutlineInputBorder(),
              )),
        ),
        TextButton(
            onPressed: () => TodoController.editItem(id, inputEditor.text),
            child: const Text("Изменить",
                style:
                TextStyle(color: Colors.lime)))
      ],
    );
  }
}

class ConfirmationDialog extends StatelessWidget {

  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Удалить задачу?",
          style: TextStyle(color: Colors.lime)),
      children: [
        TextButton(
            onPressed: () => TodoController.deleteItem(context),
            child: const Text("Да",
                style:
                TextStyle(color: Colors.lime))
        ),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Нет",
                style:
                TextStyle(color: Colors.lime))
        ),
      ],
    );
  }
}
