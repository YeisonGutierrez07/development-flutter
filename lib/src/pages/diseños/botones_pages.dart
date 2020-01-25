import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maquetado")
      ),
      drawer: MenuWidget(),
      body: Stack(
        children: <Widget>[
          _fondoPag(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo(),
                _botonesRedondeados()
              ]
            ),
          )
        ]
      ),
      bottomNavigationBar: _bottonNavigationBar(context)
    );
  }

  Widget _fondoPag() {
    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -70,
          child: cajaRosa,
        )
      ]
    );
  }

  Widget _titulo() {
    final styleTitle = TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    final styleSubTitle = TextStyle(color: Colors.white, fontSize: 18.0);

    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Classify transaction", style: styleTitle),
                SizedBox(height: 10.0),
                Text("Classify this transaction into a particular\n category", style: styleSubTitle,),
              ]
            ),
          ),
        );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pink,
        textTheme: Theme.of(context).textTheme
          .copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )
        ]
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children:[
            _crearBotonRedondeado(Colors.blue, Icons.tab, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children:[
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
            _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File'),
          ]
        ),
        TableRow(
          children:[
            _crearBotonRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entret'),
            _crearBotonRedondeado(Colors.green, Icons.cloud, 'Cloud'),
          ]
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(55, 57, 84, 0.9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 5.0),
          CircleAvatar(
            backgroundColor: color,
            radius: 35.0,
            child: Icon (icono, color: Colors.white, size: 40.0,),
          ),
          Text(texto, style: TextStyle(color: color)),
          SizedBox(height: 5.0),
        ]
      ),
    );
  }
}