import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  Database? _database;

//metodo para retornar a conexão
  Future<Database?> getDb() async {
    if (_database == null) {
      // criando o caminho do banco de dados
      var path = join(await getDatabasesPath(), 'db_project');
      //abrindo banco de dados
      _database = await openDatabase(
        path,
        version: 1,
        //o que é pra ser criado
        onCreate: (bd, v) {
          //criação da tabela
          bd.execute(
              'CREATE TABLE user (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
        },
      );
    }
    return _database;
  }
}
