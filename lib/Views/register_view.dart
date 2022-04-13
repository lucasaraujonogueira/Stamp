import 'package:flutter/material.dart';

import '../Components/imagesCircular.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Image imageUser;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _cep = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 70, left: 40, right: 40),
      color: Colors.amber,
      child: ListView(
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.black,
          ),
          Form(
            child: Column(
              children: <Widget>[
                ImageCirc(
                  height: 30,
                  width: 30,
                  image: imageUser,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _name,
                  decoration: const InputDecoration(
                      hintText: 'Informe seu nome',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 30)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _cep,
                  decoration: const InputDecoration(
                    hintText: 'Cep',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _phone,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_email);
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