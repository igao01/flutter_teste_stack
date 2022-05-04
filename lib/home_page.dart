import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Column(
        children: [
          Container(
            // Imagem do top
            color: Colors.yellow,
            width: 400,
            height: 80,
          ),
          Column(
            children: [
              Container(
                // conteudo da time line
                color: Colors.red,
                width: 400,
                // pega altura total da tela do aparelho
                // subtrai a altura da app bar 80
                // subtrai a altura da imagem do top 80
                // subtrai a altura da imagem do bottom 100
                // totalizando 260
                height: MediaQuery.of(context).size.height - 260,
              ),
              Stack(
                children: [
                  Container(
                    //imagem do bottom
                    color: Colors.green,
                    width: 400,
                    height: 100,
                  ),
                  Positioned(
                    // 2 botões
                    bottom: 0,
                    // define a largura do aparelho como a largura
                    // que de ser ocupada por eles, fazendo eles ficaram no centro
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "bbbbbbbbbbb",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "aaaaaaaaaaa",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
