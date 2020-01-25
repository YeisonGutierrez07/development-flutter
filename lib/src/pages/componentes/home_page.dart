
import 'package:flutter/material.dart';
import 'package:presentacion_app/src/providers/menu_provider.dart';
import 'package:presentacion_app/src/utils/icon_string_util.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';

class HomePageComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text("Componentes")
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> options, context) {

    final List<Widget> optionsMenu = [];

    options.forEach((opt) {
      final Widget temp =ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']), //Icon(Icons.accessible_forward, color: Colors.blue,),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      optionsMenu..add(temp)..add(Divider());
    });
    return optionsMenu;
  }
}