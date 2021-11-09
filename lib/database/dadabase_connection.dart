import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbConnection {
  static const String ID = 'id';
  static const String DESCRIPTION = 'description';
  static const String TABLE = 'ToDoList';
  static const String DB_NAME = 'list.db';

  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_sqflite.db');
    var database =
        await openDatabase(path, version: 1, onCreate: _onCreateDatabse);
    return database;
  }

  _onCreateDatabse(Database database, int version) async {
    await database.execute(
        "CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY, $DESCRIPTION TEXT)");
  }
}
