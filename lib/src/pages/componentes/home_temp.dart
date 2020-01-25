import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {

  final options = ["Uno", "Dos", "Tres", "Cuatro"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes temp"),
      ),
      body: ListView(
        children: _crearListaMap()
      ),
    );
  }

  List<Widget> _crearListaMap() {
    return options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("AJAJAJA OK"),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              print("OK");
            },
          ),
          Divider()],
      );
    }).toList();
  }
}