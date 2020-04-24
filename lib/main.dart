import 'package:flutter/material.dart';
import 'package:app_arretadas/UI/HomePage.dart';
import 'package:app_arretadas/UI/Contacts.dart';

void main() {
  runApp(MaterialApp(
    title:"Routes",
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/Contact': (context) => Contactpage(),
    },

    //home: HomePage(),
    //home: Contactpage(),

  )); 
}