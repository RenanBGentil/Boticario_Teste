import 'package:boticario_teste/Widgets/color_back.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusSenha = FocusNode();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _focusEmail.dispose();
    _focusSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Cadastre - se"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                _nomeController.clear();
                _emailController.clear();
                _senhaController.clear();
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            ColorBack(),
            ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 40.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            FontAwesomeIcons.user,
                            color: Colors.black,
                          ),
                          hintText: "Nome",
                          hintStyle: TextStyle(fontSize: 16.0),
                        ),
                        controller: _nomeController,
                        onSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_focusSenha);
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        onSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_focusSenha);
                        },
                        controller: _emailController,
                        decoration: InputDecoration(
                          icon: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.black,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        onSubmitted: (_) {
                          FocusScope.of(context).unfocus();
                        },
                        focusNode: _focusSenha,
                        controller: _senhaController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            FontAwesomeIcons.lock,
                            color: Colors.black,
                          ),
                          hintText: "Senha",
                          hintStyle: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
                        ),
                        child: Text(
                          "Cadastrar",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          if (_emailController.text.isNotEmpty &&
                              _senhaController.text.isNotEmpty &&
                              _nomeController.text.isNotEmpty) {
                            _onSuccess();
                          } else if (_emailController.text.isEmpty &&
                              _senhaController.text.isEmpty &&
                              _nomeController.text.isEmpty) {
                            _onFail();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onSuccess() {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(
        "Usuário criado com sucesso",
      ),
      duration: Duration(
        seconds: 2,
      ),
      backgroundColor: Color.fromARGB(255, 4, 125, 141),
    ));
    Future.delayed(Duration(
      seconds: 2,
    )).then((_) {
      Navigator.of(context).pop();
    });
  }

  void _onFail() {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(
        "Falha ao criar usuário ",
      ),
      duration: Duration(
        seconds: 2,
      ),
      backgroundColor: Color.fromARGB(255, 4, 125, 141),
    ));
  }
}
