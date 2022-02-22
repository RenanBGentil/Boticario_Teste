import 'package:boticario_teste/Screens/home_screen.dart';
import 'package:boticario_teste/Widgets/color_back.dart';
import 'package:boticario_teste/Widgets/enter_with.dart';
import 'package:boticario_teste/Widgets/facebook_button.dart';
import 'package:boticario_teste/Widgets/google_button.dart';
import 'package:boticario_teste/stores/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'cadastro_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _focusSenha = FocusNode();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  late ReactionDisposer disposer;
  LoginStore loginStore = LoginStore();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loginStore = Provider.of<LoginStore>(context);
    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      if (loggedIn != null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
      }
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   loginStore = Provider.of<LoginStore>(context);
  //   disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
  //     if (loggedIn != null)
  //       Navigator.of(context)
  //           .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            ColorBack(),
            Padding(
              padding: EdgeInsets.all(22.0),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            "assets/oboticario.jpg",
                            fit: BoxFit.cover,
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Observer(builder: (_) {
                          return TextField(
                            onChanged: loginStore.setEmail,
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
                              enabled: !loginStore.loading,
                              hintStyle: TextStyle(fontSize: 16.0),
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Observer(builder: (_) {
                          return TextField(
                            onChanged: loginStore.setPassword,
                            onSubmitted: (_) {
                              FocusScope.of(context).unfocus();
                            },
                            focusNode: _focusSenha,
                            controller: _senhaController,
                            obscureText: !loginStore.passwordVisible,
                            decoration: InputDecoration(
                              icon: loginStore.passwordVisible
                                  ? Icon(
                                      FontAwesomeIcons.lockOpen,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.lock,
                                      color: Colors.black,
                                    ),
                              hintText: "Senha",
                              enabled: !loginStore.loading,
                              hintStyle: TextStyle(fontSize: 16.0),
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Observer(
                          builder: (_) {
                            return TextButton(
                              onPressed: loginStore.loginPressed,
                              child: Text(
                                "Entrar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 132.0,
                                ),
                                shadowColor: Colors.black,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextButton(
                          child: Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 100.0,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CadastroScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_emailController.text.isEmpty) {
                              _scaffoldKey.currentState!.showSnackBar(SnackBar(
                                backgroundColor:
                                    Color.fromARGB(255, 4, 125, 141),
                                content: Text(
                                  "Insira seu e-mail para recupareção",
                                ),
                                duration: Duration(
                                  seconds: 2,
                                ),
                              ));
                            } else {
                              SnackBar(
                                content: Text(
                                  "Confira seu e-mail",
                                ),
                                duration: Duration(
                                  seconds: 2,
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Esqueci minha senha",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        EnterWith(),
                        FacebookButton(),
                        GoogleButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }

  void _onSuccess() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void _onFail() {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(
        "Falha ao entrar ",
      ),
      duration: Duration(
        seconds: 2,
      ),
      backgroundColor: Color.fromARGB(255, 4, 125, 141),
    ));
  }
}
