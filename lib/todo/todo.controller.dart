import 'package:flutter/material.dart';
import 'package:todoflutter/todo/todo.service.dart';
import 'package:todoflutter/todo/widgets/item.dart';

class TodoController {
  TodoController();
  static Function setState = (){};
  static int _idItemDelete; // id удаляемого предмета
  static showDialogEditing(BuildContext context, int id, String text)  {
      return DialogEditing(id:id, text:text);
  }

  static getList() {
    return TodoService.getList();
  }

  static showDialogDeleteItemWhenClickOnTrash(BuildContext context, int id)  {
    _idItemDelete = id;
    return const ConfirmationDialog();
  }

  static showCreatingDialog(BuildContext context)  {
    return const CreateItemDialog();
  }

  static deleteItem(BuildContext context) {
    Navigator.pop(context);
    setState(() {
      TodoService.deleteItem(_idItemDelete);
    });
  }

  static createItem(String text) {
    setState(() {
      TodoService.createItem(text);
    });
  }

  static editItem(int id,String text) {
    setState(() {
      TodoService.editItem(id, text);
    });
  }
}
