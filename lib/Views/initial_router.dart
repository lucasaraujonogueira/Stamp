import 'package:cryptomercard/Views/register_view.dart';
import 'package:flutter/material.dart';

import '../Components/AppsButtons.dart';

class InitialRouter extends StatefulWidget {
  const InitialRouter({Key? key}) : super(key: key);

  @override
  State<InitialRouter> createState() => _InitialRouterState();
}

class _InitialRouterState extends State<InitialRouter>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TickerProviderStateMixin;
    {
      late final AnimationController _controller = AnimationController(
        duration: const Duration(seconds: 30),
        vsync: this,
      )..repeat();

      return Stack(
        children: [
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://img.freepik.com/vetores-gratis/palavra-de-grande-venda-com-carrinho-de-compras-caixas-de-presente-loja-mapa-com-ponteiro-em-estilo-realista-ilustracao-vetorial_548887-126.jpg?t=st=1649286180~exp=1649286780~hmac=9ea04a107c3b67cb8a1a4ebea3835313a31362c4a2c93d1fac5942a2ef15842d&w=1380'),
                AppButtons(
                    height: 15,
                    width: 10,
                    textcolor: Colors.orange,
                    background: Colors.white,
                    borderColor: Colors.amber,
                    text: "Entrar",
                    widget: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterView()),
                          );
                        },
                        child: const Text('Entrar')))
              ],
            ),
          )
        ],
      );
      /*
      @override
      void dispose() {
        _controller.dispose();
        super.dispose();
      }
    */

    }
  }
}
/*
                      AppButtons(
                          size: 65,
                          textcolor: Colors.amber,
                          background: Colors.white,
                          borderColor: Colors.amber,
                          text: "Entrar",
                          widget: TextButton(
                              onPressed: () {},
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Entrar'))))
                                  */

/*


Image.network(
                            'https://img.freepik.com/vetores-gratis/palavra-de-grande-venda-com-carrinho-de-compras-caixas-de-presente-loja-mapa-com-ponteiro-em-estilo-realista-ilustracao-vetorial_548887-126.jpg?t=st=1649286180~exp=1649286780~hmac=9ea04a107c3b67cb8a1a4ebea3835313a31362c4a2c93d1fac5942a2ef15842d&w=1380'),


 return AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 90,
          height: 90,
          color: Colors.yellow,
          child: Image.network(''),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(angle: _controller.value * 2.0);
        },
      );
    */  