import 'package:lista_de_tarefas/database/dadabase_connection.dart';
import 'package:sqflite/sqlite_api.dart';

class Repository {
  // ignore: unused_field
  DbConnection? _databaseConnection;

  Repository() {
    _databaseConnection = DbConnection();
  }

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return database;
    _database = await _databaseConnection!.setDatabase();
    return database;
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }
}
