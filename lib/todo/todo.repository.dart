
class TodoRepository {
  static final List _dataList = [{
    'uid': 54,
    'text': 'dfs154dfas45'
  }, {
    'uid': 54,
    'text': 'dasdsa'
  },{
    'id': 54,
    'text': 'text'
  },{
    'id': 54,
    'text': 'text'
  },{
    'id': 54,
    'text': 'dfs154dfas45'
  }, {
    'id': 0,
    'text': 'dasdsa'
  },{
    'id': 54,
    'text': 'text'
  },{
    'id': 54,
    'text': 'text'
  }];

  static get findTodoList {
    return _dataList;
  }

  static editItem(int id,String text) {
    findTodoList[id]['text'] = text;
  }

  static createItem(String text) {
    findTodoList.add({'id':findTodoList.length, 'text':text});
  }

  static deleteItem(int id) {
    findTodoList.removeAt(id);
  }


}