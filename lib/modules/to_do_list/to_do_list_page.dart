import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_de_tarefas/modules/to_do_list/to_do_list_controller.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState
    extends ModularState<ToDoListPage, ToDoListController> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, presenter) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
        ),
        body: ListView(children: controller.getItems()),
        floatingActionButton: FloatingActionButton(
            onPressed: () => _displayDialog(context),
            tooltip: 'Add Item',
            child: Icon(Icons.add)),
      );
    });
  }

  Future<dynamic> _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add a task to your list'),
            content: TextField(
              controller: controller.textFieldController,
              decoration: const InputDecoration(hintText: 'Enter task here'),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Adicionar'),
                onPressed: () {
                  Navigator.of(context).pop();
                  controller.addToDoItem(controller.textFieldController.text);
                },
              ),
              FlatButton(
                child: Text('cancelar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
