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
  var dbList;

  void iniState() {
    super.initState();
  }

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
            title: const Text('Adicione sua tarefa'),
            content: TextField(
              controller: controller.textFieldController,
              decoration: const InputDecoration(hintText: 'Informe seu texto'),
            ),
            actions: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                child: Text('Adicionar'),
                onPressed: () {
                  Navigator.of(context).pop();
                  controller.addToDoItem(controller.textFieldController.text);
                },
              ),
              // ignore: deprecated_member_use
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
