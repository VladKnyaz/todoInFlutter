import 'package:todoflutter/todo/todo.repository.dart';

class TodoService {

  static getList() {
    return TodoRepository.findTodoList;
  }

  static editItem(int id,String text) {
      if (text.isEmpty) return;
      TodoRepository.editItem(id, text);
  }

  static createItem(String text) {
    if (text.isEmpty) return;
    TodoRepository.createItem(text);
  }

  static deleteItem(int id) {
    if (id == -1) return;
    TodoRepository.deleteItem(id);
  }
}
