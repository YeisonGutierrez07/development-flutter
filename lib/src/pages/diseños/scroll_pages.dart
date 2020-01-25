import 'package:flutter/material.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll")
      ),
      drawer: MenuWidget(),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imageFondo(),
        _textos()
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  Widget _imageFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {

    final estiloTitulo = TextStyle(color: Colors.white, fontSize: 40.0);

    return SafeArea(
          child: Column(
        children: <Widget>[
          Text("18 °C", style: estiloTitulo,),
          Text("Miércoles", style: estiloTitulo,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 70.0,)
        ],
      ),
    );
  }


  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _fondoPag2(),
        _buttonCenter()
      ]
    );
  }

  Widget _fondoPag2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(113, 194, 255, 1.0),
    );
  }

  Widget _buttonCenter() {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text("Bienvendos", style: TextStyle(color: Colors.white, fontSize: 40.0)),
        ),
        onPressed: () {},
      ),
    );
  }
}