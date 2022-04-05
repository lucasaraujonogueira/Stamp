import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Models/Register_user_model.dart';

class Connection {
  Database? database;

//metodo para retornar a conexão
  Future<Database?> getDb() async {
    if (database == null) {
      // criando o caminho do banco de dados
      var path = join(await getDatabasesPath(), 'db_project');
      //abrindo banco de dados
      database = await openDatabase(
        path,
        version: 1,
        //o que é pra ser criado
        onCreate: (bd, v) {
          //criação da tabela
          bd.execute('''
              CREATE TABLE user(
                id INTEGER PRIMARY KEY, name TEXT, lastname TEXT, email TEXT, passaword TEX, phone NUM, cep NUM,image TEXT
              )
          ''');
        },
      );
    }
    return database;
  }

  Future close() async {
    database?.close();
  }

  Future<void> adduser({required Usermodel user}) async {
    //return await database?.insert('user', Usermodel.fromJson(uuario));
    await database?.rawInsert(
        'INSERT INTO user(name, lastname, email, password, phone, cep, image) VALUES ("{$user.name}","{$user.lastname}", "{$user.email}", "{$user.password}, "{$user.phone}, "{$user.cep}. "{$user.image}",",", ", )');
  }
}
