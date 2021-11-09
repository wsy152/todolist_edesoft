import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ToDoListController extends ChangeNotifier implements Disposable {
  final List<String> _todoList = <String>[];

  final TextEditingController textFieldController = TextEditingController();

  Widget buildTodoItem(String title) {
    return ListTile(title: Text(title));
  }

  void addToDoItem(String title) {
    _todoList.add(title);

    textFieldController.clear();
    notifyListeners();
  }

  List<Widget> getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _todoList) {
      _todoWidgets.add(buildTodoItem(title));
    }
    return _todoWidgets;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
