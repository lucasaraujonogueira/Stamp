class Usermodel {
  int id;
  String image;
  String name;
  String lastname;
  int cep;
  String password;
  int phone;
  String email;

  Usermodel(
      {required this.id,
      required this.name,
      required this.lastname,
      required this.cep,
      required this.password,
      required this.phone,
      required this.email,
      required this.image});

/*
  Future<Map<String, dynamic>> json() async {
    return {
      'id': id,
      'image': image,
      'name': name,
      'lastname': lastname,
      'cep': cep,
      'phone': phone,
      'email': email,
      'password': password,
    };
  }
*/
  factory Usermodel.fromJson(Map<String, dynamic> pardesJson) {
    return Usermodel(
        id: pardesJson['id'] as int,
        name: pardesJson['name'] as String,
        lastname: pardesJson['lastname'] as String,
        cep: pardesJson['cep'] as int,
        password: pardesJson['password'] as String,
        phone: pardesJson['phone'] as int,
        email: pardesJson['email'] as String,
        image: pardesJson['image'] as String);
  }

  factory Usermodel.fromMap(Map<String, dynamic> json) => Usermodel(
      id: json['id'],
      name: json['name'],
      lastname: json['lastname'],
      cep: json['cep'],
      password: json['password'],
      phone: json['phone'],
      email: json['email'],
      image: json['image']);
}
