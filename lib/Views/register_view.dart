import 'package:cryptomercard/Database/bd.dart';
import 'package:cryptomercard/Database/sql.dart';
import 'package:cryptomercard/Models/Register_user_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController nameUser = TextEditingController();
  final TextEditingController cpfUser = TextEditingController();
  final TextEditingController phoneUser = TextEditingController();
  final TextEditingController emailUser = TextEditingController();
  final TextEditingController passwordUser = TextEditingController();
  var id = 0;

  //List<Usermodel> _usermodels = [];
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<Usermodel> user = [];
  List<Usermodel> users = [];

  onSubmite() async {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();

      setState(() {});
    } else {
      print('Ocorreu um erro');
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _databaseHelper = DatabaseHelper.instance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          Form(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameUser,
                  decoration: const InputDecoration(
                      hintText: 'Informe seu nome',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 30)),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Nome incompleto';
                    }
                    return value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  /*
                  onSaved: (value) => setState(() {
                    user.email = value as String;
                  }),
                  */
                  controller: emailUser,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'E-mail vázio';
                    }
                    return value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Error';
                    }
                  },
                  controller: passwordUser,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      fillColor: Colors.green),
                ),
                Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        insert(id, nameUser, cpfUser, emailUser, passwordUser);
                        Navigator.pop(context);
                      },
                      child: const Text('Registrar'),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

void insert(id, name, cpf, email, password) {
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  /*
  Map<String, dynamic> users = {
    Usermodel.ColName: name,
    Usermodel.ColEmail: email,
    Usermodel.ColPassword: password,
  };
  */
  var user = Usermodel(id: id, name: name, email: email, password: password);

  _databaseHelper.insetUser(user);
}

/*
  return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints.tightForFinite(width: 200),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /*
            TextFormField(
              decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  errorText: 'Error Text'),
            ),
           */
            Text('Ola pessoal')
          ],
        )
        )
        );
        */

        /*Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
      ],
    ));
    */