import 'package:cryptomercard/Models/Register_user_model.dart';

class ConnectionSQL {
  static const CREATE_DATABASE = '''
  CREATE TABLE "contatos" (
    `id`	INTEGER PRIMARY KEY AUTOINCREMENT,
    `name`	TEXT,
    `lastname`	TEXT,
    `cep` NUMBER, 
    `password` TEXT, 
    `phone` NUMBER, 
    `email` TEXT, 
    `image`	TEXT			
  );
  ''';

  static String selecionarTodosOsContatos() {
    return 'select * from contatos;';
  }

  static String addUser(Usermodel user) {
    return '''
    insert into users (name, lastname, cep, password, phone, email)
    values ('${user.name}', '${user.lastname}', '${user.cep}', '${user.password}', '${user.phone}', '${user.email}', '${user.image}');
    ''';
  }

  static String aupdateUser(Usermodel user) {
    return '''
    update contatos
    set name = '${user.name}',
    email = '${user.email}'
    where id = ${user.id};
    ''';
  }

  static String deletarContato(Usermodel user) {
    return 'delete from contatos where id = ${user.id};';
  }
}
