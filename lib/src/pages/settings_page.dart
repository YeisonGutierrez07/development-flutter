import 'package:flutter/material.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  static final String refPage = 'SettingPage';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Configuración"),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Con '),
        ],
      ),
    );
  }
}