class Usermodel {
  static const tblUser = 'usertable';
  static const ColId = 'id';
  static const ColName = 'name';
  static const ColEmail = 'email';
  static const ColPassword = 'password';

  int id;
  String name;
  String email;
  String password;

  Usermodel(
      {required this.id,
      required this.name,
      required this.email,
      required this.password});

  Map toMap(Usermodel user) {
    return {id: user.id, name: name, email: email, password: password};
  }

  Map<String, dynamic> ToMap() {
    var map = <String, dynamic>{
      name: name,
      email: email,
      password: password,
    };
    if (id != null) map[ColId] = id;
    return map;
  }

  @override
  String toString() {
    return 'Usermodel{id: $id, name: $name, age: $email, password: $password}';
  }
}
