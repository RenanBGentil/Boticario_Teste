import 'package:boticario_teste/Widgets/color_back.dart';
import 'package:boticario_teste/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("Configurações"),
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
                          hintText: "Insira Novo Nome",
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
                          hintText: "Insira Novo Email",
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
                          hintText: "Insira Nova Senha",
                          hintStyle: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextButton(
                        child: Text(
                          "Atualizar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: "WorkSansSemiBold"),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
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
        "Informaçôes atualizadas com sucesso",
      ),
      duration: Duration(
        seconds: 2,
      ),
      backgroundColor: Color.fromARGB(255, 4, 125, 141),
    ));
  }

  void _onFail() {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(
        "Falha ao atualizar as informações usuário ",
      ),
      duration: Duration(
        seconds: 2,
      ),
      backgroundColor: Color.fromARGB(255, 4, 125, 141),
    ));
  }
}
