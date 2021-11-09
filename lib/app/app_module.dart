import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_de_tarefas/modules/to_do_list/to_do_list_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(ToDoListModule.ROUTE, module: ToDoListModule()),
      ];
}
