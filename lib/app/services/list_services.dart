import 'package:lista_de_tarefas/database/dadabase_connection.dart';
import 'package:lista_de_tarefas/database/listItens_model.dart';

import 'package:lista_de_tarefas/database/reposytory.dart';

class ListService {
  late Repository _repository;

  ListService() {
    this._repository = Repository();
  }

  saveList(ListItensModels listItens) async {
    return await _repository.insertData(
        DbConnection.TABLE, listItens.categoryMap());
  }
}
