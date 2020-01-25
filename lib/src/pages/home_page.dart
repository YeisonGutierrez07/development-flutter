import 'package:flutter/material.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  static final String refPage = 'HomePage';

  @override
  Widget build(BuildContext context) {


    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Principal"),
      ),
      drawer: MenuWidget(),
      body: Stack(
        children: <Widget>[
          _imageFondo(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo()
              ]
            ),
          )
        ],
      )
    );
  }


  Widget _imageFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/flutter-logo.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titulo() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("¡¡Creer Que Se Puede, Creer Que Lo Puedo Lograr!! \n \n Yeison G", style: TextStyle(color: Colors.white, fontSize: 60.0))
          )
        ]
      )
    );
  }

}