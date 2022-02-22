import 'package:boticario_teste/Screens/home_screen.dart';
import 'package:boticario_teste/Screens/login_screen.dart';
import 'package:boticario_teste/Screens/perfil_screen.dart';
import 'package:boticario_teste/Screens/setting_screen.dart';
import 'package:boticario_teste/Screens/sobre_screen.dart';
import 'package:boticario_teste/Screens/splash_screen.dart';
import 'package:boticario_teste/Widgets/color_back.dart';
import 'package:boticario_teste/Widgets/custom_header.dart';
import 'package:boticario_teste/Widgets/drawer_tile.dart';
import 'package:boticario_teste/stores/login_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Stack(
        children: <Widget>[
          ColorBack(),
          CustomHeader(),
          Container(
            padding: EdgeInsets.only(top: 154.0),
            child: ListView(
              padding: EdgeInsets.only(left:50.0,top:40.0),
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.home,
                    text: "Home",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PerfilScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.person,
                    text: "Perfil",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.settings,
                    text: "Configurações",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SobreScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.question_answer,
                    text: "Sobre",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Provider.of<LoginStore>(context, listen: false).logout();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Splash()));
                  },
                  child:  DrawerTile(
                    icon: Icons.exit_to_app,
                    text: "Sair",
                  ),
                ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}