import 'package:boticario_teste/Screens/splash_screen.dart';
import 'package:boticario_teste/stores/login_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
      create: (_) => LoginStore(),
      child: MaterialApp(
          title: 'Boticário Teste',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Color.fromARGB(255, 4, 125, 141)
          ),
          debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
