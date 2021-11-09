import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_de_tarefas/modules/to_do_list/to_do_list_controller.dart';
import 'package:lista_de_tarefas/modules/to_do_list/to_do_list_page.dart';

class ToDoListModule extends Module {
  static const ROUTE = '/';

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ToDoListController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(ROUTE, child: (_, args) => ToDoListPage()),
  ];
}
