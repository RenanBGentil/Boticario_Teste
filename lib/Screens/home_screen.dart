// import 'dart:convert';

import 'package:boticario_teste/Api/Api.dart';
import 'package:boticario_teste/Widgets/custom_drawer.dart';
import 'package:boticario_teste/Widgets/post_row.dart';
import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

const request = "https://gb-mobile-app-teste.s3.amazonaws.com/data.json";


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<dynamic> newsMessage;
  late User name;

  // Future< Map> getData() async {
  //   http.Response response = await http.get(request);
  //   print(response.body);
  //   return json.decode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 172, 194),
        title: Text("Home", style:
        TextStyle(
          color:  Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 26.0,
        ),
        ),
        centerTitle: true,
      ),
     body: Container(
       color: Colors.white,
       child:
         PostRow(),
     ),
    );
  }
}