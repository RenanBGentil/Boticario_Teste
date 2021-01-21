import 'package:boticario_teste/Widgets/custom_divider.dart';
import 'package:boticario_teste/Widgets/post_header.dart';
import 'package:flutter/material.dart';

class CustomPost extends StatelessWidget {

  TextStyle _textStyle = TextStyle(
      color:  Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 18.0
  );

  Widget _container() =>
  Container(
  color: const Color(0xFF00C6FF),
  width: 100.0,
  height: 1.0,
  margin: const EdgeInsets.symmetric(vertical: 4.0)
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PostHeader(),
        Container(
            color: const Color(0xFF00C6FF),
            width: 100.0,
            height: 1.0,
            margin: const EdgeInsets.symmetric(vertical: 4.0)
        ),
        Text(
          "Além disso, nossos funcionários e familiares receberão kits de proteção. Afinal, o cuidado começa aqui dentro, né?",
          style: _textStyle
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "Com a união das demais marcas do grupo, doamos 216 toneladas de"
              " produtos de higiene para comunidades em vulnerabilidade social de diversas partes do país.",
          style: _textStyle,
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "Tá sabendo da novidade? Tem lançamento de batons Make B. com ácido hialurônico e tá rolando amostra no app do Boti",
          style: _textStyle,
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "Passe protetor solar e beba muuuita água. Essa dupla é"
              " essencial pra você conseguir aproveitar todos os dias de festa. Cuida desse corpo que você tanto ama!",
          style: _textStyle,
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "Rainha que é Rainha também se preocupa com o reino animal. "
              "Tô muito orgulhosa e querendo que essa atitude vire moda!"
              " O Boti ama muito os bichinhos e não testa em animais há quase 20 anos.",
          style: _textStyle,
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "Produtos veganos também demonstram nosso amor pela natureza! "
              " Sabia que são mais de 30% de produtos de make sem nenhuma "
              "matéria-prima de origem animal? Ah, e 40% da linha de "
              "Nativa SPA também é vegana. Pra saber se o produto é vegano, é só conferir na embalagem!",
          style: _textStyle
        ),
        const SizedBox (height: 20.0,),
        CustomDivider(),
        PostHeader(),
        _container(),
        Text(
          "É tanto produto em promoção que vc nem vai saber pra onde olhar. "
              " Entra lá na nossa loja online e vem comemorar o Dia da #BotiLover com a gente.",
          style: _textStyle,
        ),
        Container(
            width: 24.0,
            height: 1.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0)
        ),
      ],
    );
  }
}