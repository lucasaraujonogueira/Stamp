import 'dart:async';

import 'package:cryptomercard/Database/sql.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../Models/Register_user_model.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static DatabaseHelper? _instance;
  static const DATABASE_NAME = 'database.db';
  static const DATABASE_VERSION = 1;

  static DatabaseHelper get instance {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  /* ============================================= */

  Database? _db;

  Future<Database> get db => _openDatabase();

  Future<Database> _openDatabase() async {
    sqfliteFfiInit();
    String databasePath = await databaseFactoryFfi.getDatabasesPath();
    String path = join(databasePath, DATABASE_NAME);
    DatabaseFactory databaseFactory = databaseFactoryFfi;

    _db ??= await databaseFactory.openDatabase(path,
        options: OpenDatabaseOptions(
            onCreate: _onCreate, version: DATABASE_VERSION));
    return _db!;
  }

  FutureOr<void> _onCreate(Database db, int version) {
    db.transaction((reference) async {
      reference.execute(ConnectionSQL.CREATE_DATABASE);
    });
  }

  static const CREATE_DATABASE = '''
  CREATE TABLE "${Usermodel.tblUser}" (
     `${Usermodel.ColId}`	INTEGER PRIMARY KEY AUTOINCREMENT,
    `${Usermodel.ColName}`	TEXT,
    `${Usermodel.ColEmail}` TEXT NOT NULL, 
    `${Usermodel.ColPassword}` TEXT NOT NULL, 
    		
  );
  ''';

  static String selecionarTodosOsContatos() {
    return 'select * from contatos;';
  }

  /*
  static String addUser(Usermodel user) {
    return '''
    insert into users (name,password, email)
    values ('${user.name}', '${user.password}', '${user.email}');
    ''';
  }
  */

  Future<int?> insetUser(Usermodel user) async {
    Database? db = _db;
    return await db?.insert(Usermodel.tblUser,
        {'name': user.name, 'email': user.email, 'password': user.password});
  }

  static String aupdateUser(Usermodel user) {
    return '''
    update contatos
    set name = '${user.name}',
    email = '${user.email}'
    where id = ${user.email};
    ''';
  }

  static String deletarContato(Usermodel user) {
    return 'delete from contatos where id = ${user.email};';
  }
}
