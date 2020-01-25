import 'package:flutter/material.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diseño basico")
      ),
      drawer: MenuWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage("https://i.ytimg.com/vi/BfCwN4iy6T8/maxresdefault.jpg"),
        height: 200.0,
        fit: BoxFit.cover,
      )
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Paisaje de colorados", style: estiloTitulo),
                  SizedBox(height: 6.1,),
                  Text("Pasca, Cundinamarca", style: estiloSubTitulo)
                ]
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ]
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _returnIcon(Icons.call, "CALL"),
        _returnIcon(Icons.near_me, "ROUTE"),
        _returnIcon(Icons.share, "SHARE"),
      ]
    );
  }

  Widget _returnIcon(IconData icon, String title) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(title, style: TextStyle(color: Colors.blue, fontSize: 12.0),)
      ]
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Text(
          "Labore cillum sint ad eiusmod laborum dolor laboris duis dolor ea exercitation dolor. Duis esse mollit in officia sint exercitation incididunt consectetur aliquip reprehenderit veniam exercitation ea. Adipisicing est id laborum veniam consectetur. Ad pariatur labore commodo amet et. Anim adipisicing consectetur non labore proident qui qui. Proident voluptate deserunt adipisicing est pariatur ea.",
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}