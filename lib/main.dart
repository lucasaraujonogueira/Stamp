import 'package:cryptomercard/Views/register_view.dart';
import 'package:flutter/material.dart';

import 'Views/initial_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado',
      theme: ThemeData.dark(),
      initialRoute: 'register',
      routes: {
        'initialrouter': (_) => const InitialRouter(),
        'register': (_) => const RegisterView()
      },
    );
  }
}
