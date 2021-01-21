import 'package:boticario_teste/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 172, 194),
        title: Text("Sobre", style:
        TextStyle(
          color:  Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 26.0,
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Text("O Grupo Boticário é uma empresa 100% brasileira que "
                "acredita e confia no desenvolvimento do Brasil. "
                "Administramos quatro unidades de negócio: O Boticário, Eudora, quem disse, berenice? e The Beauty Box. "
                "Somos 7 mil colaboradores diretos e 25 mil indiretos, ligados a 900 franqueados. "
                "Estamos em 1.750 municípios brasileiros e contamos com mais de 3.800 lojas no Brasil,"
                " além de levar nossos produtos para outros oito países.\n\n O foco nas "
                "pessoas e no ambiente onde estamos inseridos é uma tônica na história e na trajetória do Grupo Boticário. "
                "Antes mesmo de começar a produzir na Bahia, nos aproximamos dos moradores destas cidades e, juntos, "
                "revitalizamos espaços públicos. Implantamos programas de capacitação profissional e"
                " mudamos a vida de mais de 400 pessoas dos dois municípios onde estamos sediados. Cuidamos da "
                "conservação do meio ambiente por meio da Fundação Grupo Boticário de Proteção à Natureza, "
                "criada em 1990 e que já apoiou mais de 1.400 projetos\n\n"
                "Essa é a beleza que sustenta nossas relações. Colocamos em prática valores que duram para sempre, "
                "como comprometimento com os resultados, valorização das pessoas e paixão pela evolução e desafios, "
                "com o objetivo de construir um País cada vez melhor. "
                "Para nós do Grupo Boticário, beleza não é o que a gente sonha, imagina ou quer. Beleza é o que a gente faz.",
              style: TextStyle(
                color:  Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
