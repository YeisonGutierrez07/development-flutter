import 'package:flutter/material.dart';
import 'package:presentacion_app/routes/routes.dart';
import 'package:presentacion_app/src/pages/componentes/home_page.dart';
import 'package:presentacion_app/src/pages/home_page.dart';
import 'package:presentacion_app/src/pages/settings_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Flutter',
      initialRoute: '/',
      routes: getAplicationRoutes()
    );
  }
}